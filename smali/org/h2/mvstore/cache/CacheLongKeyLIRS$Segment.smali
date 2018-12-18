.class Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;
.super Ljava/lang/Object;
.source "CacheLongKeyLIRS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/cache/CacheLongKeyLIRS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final entries:[Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry<",
            "TV;>;"
        }
    .end annotation
.end field

.field hits:J

.field mapSize:I

.field private final mask:I

.field private maxMemory:J

.field misses:J

.field private final nonResidentQueueSize:I

.field private final queue:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final queue2:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry<",
            "TV;>;"
        }
    .end annotation
.end field

.field queue2Size:I

.field queueSize:I

.field private final stack:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry<",
            "TV;>;"
        }
    .end annotation
.end field

.field private stackMoveCounter:I

.field private final stackMoveDistance:I

.field private stackSize:I

.field usedMemory:J


# direct methods
.method constructor <init>(JIII)V
    .locals 0

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    invoke-virtual {p0, p1, p2}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->setMaxMemory(J)V

    .line 586
    iput p3, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stackMoveDistance:I

    .line 587
    iput p5, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->nonResidentQueueSize:I

    add-int/lit8 p1, p4, -0x1

    .line 590
    iput p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->mask:I

    .line 593
    new-instance p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    invoke-direct {p1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;-><init>()V

    iput-object p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stack:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    .line 594
    iget-object p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stack:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object p2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stack:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object p3, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stack:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object p3, p2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object p3, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackPrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    .line 595
    new-instance p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    invoke-direct {p1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;-><init>()V

    iput-object p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    .line 596
    iget-object p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object p2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object p3, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object p3, p2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queueNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object p3, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queuePrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    .line 597
    new-instance p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    invoke-direct {p1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;-><init>()V

    iput-object p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue2:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    .line 598
    iget-object p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue2:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object p2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue2:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object p3, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue2:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object p3, p2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queueNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object p3, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queuePrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    .line 601
    new-array p1, p4, [Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    .line 602
    iput-object p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->entries:[Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    return-void
.end method

.method constructor <init>(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment<",
            "TV;>;I)V"
        }
    .end annotation

    .line 614
    iget-wide v1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->maxMemory:J

    iget v3, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stackMoveDistance:I

    iget v5, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->nonResidentQueueSize:I

    move-object v0, p0

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;-><init>(JIII)V

    .line 615
    iget-wide v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->hits:J

    iput-wide v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->hits:J

    .line 616
    iget-wide v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->misses:J

    iput-wide v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->misses:J

    .line 617
    iget-object p2, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stack:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object p2, p2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackPrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    .line 618
    :goto_0
    iget-object v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stack:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    if-eq p2, v0, :cond_0

    .line 619
    invoke-static {p2}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->copy(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    move-result-object v0

    .line 620
    invoke-direct {p0, v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->addToMap(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    .line 621
    invoke-direct {p0, v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->addToStack(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    .line 622
    iget-object p2, p2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackPrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    goto :goto_0

    .line 624
    :cond_0
    iget-object p2, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object p2, p2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queuePrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    .line 625
    :goto_1
    iget-object v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    if-eq p2, v0, :cond_2

    .line 626
    iget-wide v0, p2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->key:J

    iget-wide v2, p2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->key:J

    invoke-static {v2, v3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->getHash(J)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->find(JI)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    move-result-object v0

    if-nez v0, :cond_1

    .line 628
    invoke-static {p2}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->copy(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    move-result-object v0

    .line 629
    invoke-direct {p0, v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->addToMap(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    .line 631
    :cond_1
    iget-object v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    invoke-direct {p0, v1, v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->addToQueue(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    .line 632
    iget-object p2, p2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queuePrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    goto :goto_1

    .line 634
    :cond_2
    iget-object p2, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue2:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object p2, p2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queuePrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    .line 635
    :goto_2
    iget-object v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue2:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    if-eq p2, v0, :cond_4

    .line 636
    iget-wide v0, p2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->key:J

    iget-wide v2, p2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->key:J

    invoke-static {v2, v3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->getHash(J)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->find(JI)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    move-result-object v0

    if-nez v0, :cond_3

    .line 638
    invoke-static {p2}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->copy(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    move-result-object v0

    .line 639
    invoke-direct {p0, v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->addToMap(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    .line 641
    :cond_3
    iget-object v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue2:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    invoke-direct {p0, v1, v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->addToQueue(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    .line 642
    iget-object p2, p2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queuePrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    goto :goto_2

    :cond_4
    return-void
.end method

.method private declared-synchronized access(JI)V
    .locals 0

    monitor-enter p0

    .line 736
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->find(JI)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 737
    iget-object p2, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->value:Ljava/lang/Object;

    if-nez p2, :cond_0

    goto :goto_3

    .line 740
    :cond_0
    invoke-virtual {p1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->isHot()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 741
    iget-object p2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stack:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object p2, p2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    if-eq p1, p2, :cond_6

    .line 742
    iget p2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stackMoveDistance:I

    if-eqz p2, :cond_1

    iget p2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stackMoveCounter:I

    iget p3, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->topMove:I

    sub-int/2addr p2, p3

    iget p3, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stackMoveDistance:I

    if-le p2, p3, :cond_6

    .line 746
    :cond_1
    iget-object p2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stack:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object p2, p2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackPrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    if-ne p1, p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 747
    :goto_0
    invoke-direct {p0, p1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->removeFromStack(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    if-eqz p2, :cond_3

    .line 751
    invoke-direct {p0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->pruneStack()V

    .line 753
    :cond_3
    invoke-direct {p0, p1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->addToStack(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    goto :goto_2

    .line 757
    :cond_4
    invoke-direct {p0, p1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->removeFromQueue(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    .line 758
    iget-object p2, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    if-eqz p2, :cond_5

    .line 761
    invoke-direct {p0, p1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->removeFromStack(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    .line 765
    invoke-direct {p0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->convertOldestHotToCold()V

    goto :goto_1

    .line 769
    :cond_5
    iget-object p2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    invoke-direct {p0, p2, p1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->addToQueue(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    .line 772
    :goto_1
    invoke-direct {p0, p1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->addToStack(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 774
    :cond_6
    :goto_2
    monitor-exit p0

    return-void

    .line 738
    :cond_7
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 735
    monitor-exit p0

    throw p1
.end method

.method private addToMap(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry<",
            "TV;>;)V"
        }
    .end annotation

    .line 665
    iget-wide v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->key:J

    invoke-static {v0, v1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->getHash(J)I

    move-result v0

    iget v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->mask:I

    and-int/2addr v0, v1

    .line 666
    iget-object v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->entries:[Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    aget-object v1, v1, v0

    iput-object v1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->mapNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    .line 667
    iget-object v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->entries:[Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    aput-object p1, v1, v0

    .line 668
    iget-wide v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->usedMemory:J

    iget p1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->memory:I

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->usedMemory:J

    .line 669
    iget p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->mapSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->mapSize:I

    return-void
.end method

.method private addToQueue(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry<",
            "TV;>;",
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry<",
            "TV;>;)V"
        }
    .end annotation

    .line 997
    iput-object p1, p2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queuePrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    .line 998
    iget-object v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queueNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object v0, p2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queueNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    .line 999
    iget-object v0, p2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queueNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object p2, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queuePrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    .line 1000
    iput-object p2, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queueNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    .line 1001
    iget-object p1, p2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->value:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 1002
    iget p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queueSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queueSize:I

    goto :goto_0

    .line 1004
    :cond_0
    iget p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue2Size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue2Size:I

    :goto_0
    return-void
.end method

.method private addToStack(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry<",
            "TV;>;)V"
        }
    .end annotation

    .line 968
    iget-object v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stack:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackPrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    .line 969
    iget-object v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stack:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object v0, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    .line 970
    iget-object v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object p1, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackPrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    .line 971
    iget-object v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stack:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object p1, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    .line 972
    iget v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stackSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stackSize:I

    .line 973
    iget v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stackMoveCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stackMoveCounter:I

    iput v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->topMove:I

    return-void
.end method

.method private addToStackBottom(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry<",
            "TV;>;)V"
        }
    .end annotation

    .line 977
    iget-object v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stack:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    .line 978
    iget-object v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stack:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object v0, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackPrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackPrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    .line 979
    iget-object v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackPrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object p1, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    .line 980
    iget-object v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stack:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object p1, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackPrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    .line 981
    iget p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stackSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stackSize:I

    return-void
.end method

.method private convertOldestHotToCold()V
    .locals 2

    .line 920
    iget-object v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stack:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object v0, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackPrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    .line 921
    iget-object v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stack:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    if-eq v0, v1, :cond_0

    .line 928
    invoke-direct {p0, v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->removeFromStack(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    .line 930
    iget-object v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    invoke-direct {p0, v1, v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->addToQueue(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    .line 931
    invoke-direct {p0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->pruneStack()V

    return-void

    .line 924
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private static copy(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry<",
            "TV;>;)",
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry<",
            "TV;>;"
        }
    .end annotation

    .line 673
    new-instance v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    invoke-direct {v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;-><init>()V

    .line 674
    iget-wide v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->key:J

    iput-wide v1, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->key:J

    .line 675
    iget-object v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->value:Ljava/lang/Object;

    iput-object v1, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->value:Ljava/lang/Object;

    .line 676
    iget v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->memory:I

    iput v1, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->memory:I

    .line 677
    iget p0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->topMove:I

    iput p0, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->topMove:I

    return-object v0
.end method

.method private evict()V
    .locals 5

    .line 887
    :cond_0
    invoke-direct {p0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->evictBlock()V

    .line 888
    iget-wide v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->usedMemory:J

    iget-wide v2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->maxMemory:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void
.end method

.method private evictBlock()V
    .locals 5

    .line 895
    :goto_0
    iget v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queueSize:I

    iget v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->mapSize:I

    ushr-int/lit8 v1, v1, 0x5

    if-gt v0, v1, :cond_0

    iget v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stackSize:I

    if-lez v0, :cond_0

    .line 896
    invoke-direct {p0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->convertOldestHotToCold()V

    goto :goto_0

    .line 899
    :cond_0
    iget-wide v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->usedMemory:J

    iget-wide v2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->maxMemory:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queueSize:I

    if-lez v0, :cond_1

    .line 900
    iget-object v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object v0, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queuePrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    .line 901
    iget-wide v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->usedMemory:J

    iget v3, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->memory:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->usedMemory:J

    .line 902
    invoke-direct {p0, v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->removeFromQueue(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    const/4 v1, 0x0

    .line 903
    iput-object v1, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 904
    iput v1, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->memory:I

    .line 905
    iget-object v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue2:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    invoke-direct {p0, v1, v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->addToQueue(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    .line 907
    iget v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->nonResidentQueueSize:I

    iget v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->mapSize:I

    iget v2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue2Size:I

    sub-int/2addr v1, v2

    mul-int v0, v0, v1

    if-ltz v0, :cond_0

    .line 909
    :goto_1
    iget v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue2Size:I

    if-le v1, v0, :cond_0

    .line 910
    iget-object v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue2:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object v1, v1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queuePrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    .line 911
    iget-wide v2, v1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->key:J

    invoke-static {v2, v3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->getHash(J)I

    move-result v2

    .line 912
    iget-wide v3, v1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->key:J

    invoke-virtual {p0, v3, v4, v2}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->remove(JI)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method private pruneStack()V
    .locals 2

    .line 939
    :goto_0
    iget-object v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stack:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object v0, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackPrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    .line 943
    invoke-virtual {v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->isHot()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 947
    :cond_0
    invoke-direct {p0, v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->removeFromStack(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    goto :goto_0
.end method

.method private removeFromQueue(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry<",
            "TV;>;)V"
        }
    .end annotation

    .line 1009
    iget-object v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queuePrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object v1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queueNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object v1, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queueNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    .line 1010
    iget-object v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queueNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object v1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queuePrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object v1, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queuePrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    const/4 v0, 0x0

    .line 1011
    iput-object v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queueNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queuePrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    .line 1012
    iget-object p1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->value:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 1013
    iget p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queueSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queueSize:I

    goto :goto_0

    .line 1015
    :cond_0
    iget p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue2Size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue2Size:I

    :goto_0
    return-void
.end method

.method private removeFromStack(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry<",
            "TV;>;)V"
        }
    .end annotation

    .line 990
    iget-object v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackPrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object v1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object v1, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    .line 991
    iget-object v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object v1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackPrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object v1, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackPrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    const/4 v0, 0x0

    .line 992
    iput-object v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackPrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    .line 993
    iget p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stackSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stackSize:I

    return-void
.end method


# virtual methods
.method containsKey(JI)Z
    .locals 0

    .line 1053
    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->find(JI)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1054
    iget-object p1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->value:Ljava/lang/Object;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method find(JI)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry<",
            "TV;>;"
        }
    .end annotation

    .line 959
    iget v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->mask:I

    and-int/2addr p3, v0

    .line 960
    iget-object v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->entries:[Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    aget-object p3, v0, p3

    :goto_0
    if-eqz p3, :cond_0

    .line 961
    iget-wide v0, p3, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->key:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    .line 962
    iget-object p3, p3, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->mapNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method get(JI)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)TV;"
        }
    .end annotation

    .line 703
    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->find(JI)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    if-nez v0, :cond_0

    .line 706
    iget-wide p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->misses:J

    add-long/2addr p1, v2

    iput-wide p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->misses:J

    return-object v1

    .line 709
    :cond_0
    iget-object v4, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->value:Ljava/lang/Object;

    if-nez v4, :cond_1

    .line 712
    iget-wide p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->misses:J

    add-long/2addr p1, v2

    iput-wide p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->misses:J

    return-object v1

    .line 715
    :cond_1
    invoke-virtual {v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->isHot()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 716
    iget-object v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stack:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object v1, v1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    if-eq v0, v1, :cond_4

    .line 717
    iget v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stackMoveDistance:I

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stackMoveCounter:I

    iget v0, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->topMove:I

    sub-int/2addr v1, v0

    iget v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stackMoveDistance:I

    if-le v1, v0, :cond_4

    .line 719
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->access(JI)V

    goto :goto_0

    .line 723
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->access(JI)V

    .line 725
    :cond_4
    :goto_0
    iget-wide p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->hits:J

    add-long/2addr p1, v2

    iput-wide p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->hits:J

    return-object v4
.end method

.method getMemory(JI)I
    .locals 0

    .line 689
    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->find(JI)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 690
    :cond_0
    iget p1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->memory:I

    :goto_0
    return p1
.end method

.method getNewMapLen()I
    .locals 3

    .line 653
    iget v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->mask:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v1, v0, 0x3

    .line 654
    iget v2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->mapSize:I

    mul-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_0

    const/high16 v1, 0x10000000

    if-ge v0, v1, :cond_0

    mul-int/lit8 v0, v0, 0x2

    return v0

    :cond_0
    const/16 v1, 0x20

    if-le v0, v1, :cond_1

    .line 657
    div-int/lit8 v1, v0, 0x8

    iget v2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->mapSize:I

    if-le v1, v2, :cond_1

    .line 659
    div-int/lit8 v0, v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method declared-synchronized keySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1063
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1064
    iget-object v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stack:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    :goto_0
    iget-object v1, v1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object v2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stack:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    if-eq v1, v2, :cond_0

    .line 1065
    iget-wide v2, v1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->key:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1067
    :cond_0
    iget-object v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    :goto_1
    iget-object v1, v1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queueNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object v2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    if-eq v1, v2, :cond_1

    .line 1068
    iget-wide v2, v1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->key:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1070
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1062
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized keys(ZZ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1028
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1030
    iget-object p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue2:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    .line 1031
    :goto_0
    iget-object p2, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queueNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    :goto_1
    if-eq p2, p1, :cond_2

    .line 1033
    iget-wide v1, p2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->key:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1032
    iget-object p2, p2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queueNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    goto :goto_1

    .line 1036
    :cond_1
    iget-object p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stack:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object p1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    :goto_2
    iget-object p2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stack:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    if-eq p1, p2, :cond_2

    .line 1038
    iget-wide v1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->key:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    iget-object p1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1041
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 1027
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized put(JILjava/lang/Object;I)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JITV;I)TV;"
        }
    .end annotation

    monitor-enter p0

    if-eqz p4, :cond_3

    .line 793
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->find(JI)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 797
    :cond_0
    iget-object v0, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->value:Ljava/lang/Object;

    .line 798
    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->remove(JI)Ljava/lang/Object;

    :goto_0
    int-to-long v1, p5

    .line 800
    iget-wide v3, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->maxMemory:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 802
    monitor-exit p0

    return-object v0

    .line 804
    :cond_1
    :try_start_1
    new-instance v3, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    invoke-direct {v3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;-><init>()V

    .line 805
    iput-wide p1, v3, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->key:J

    .line 806
    iput-object p4, v3, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->value:Ljava/lang/Object;

    .line 807
    iput p5, v3, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->memory:I

    .line 808
    iget p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->mask:I

    and-int/2addr p1, p3

    .line 809
    iget-object p2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->entries:[Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    aget-object p2, p2, p1

    iput-object p2, v3, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->mapNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    .line 810
    iget-object p2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->entries:[Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    aput-object v3, p2, p1

    .line 811
    iget-wide p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->usedMemory:J

    const/4 p3, 0x0

    add-long/2addr p1, v1

    iput-wide p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->usedMemory:J

    .line 812
    iget-wide p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->usedMemory:J

    iget-wide p3, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->maxMemory:J

    cmp-long p5, p1, p3

    if-lez p5, :cond_2

    .line 814
    invoke-direct {p0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->evict()V

    .line 817
    iget p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stackSize:I

    if-lez p1, :cond_2

    .line 819
    iget-object p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    invoke-direct {p0, p1, v3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->addToQueue(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    .line 822
    :cond_2
    iget p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->mapSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->mapSize:I

    .line 824
    invoke-direct {p0, v3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->addToStack(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 825
    monitor-exit p0

    return-object v0

    :cond_3
    :try_start_2
    const-string p1, "The value may not be null"

    const/4 p2, 0x0

    .line 789
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/h2/mvstore/DataUtils;->newIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 787
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized remove(JI)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)TV;"
        }
    .end annotation

    monitor-enter p0

    .line 837
    :try_start_0
    iget v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->mask:I

    and-int/2addr p3, v0

    .line 838
    iget-object v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->entries:[Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    aget-object v0, v0, p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 840
    monitor-exit p0

    return-object v1

    .line 843
    :cond_0
    :try_start_1
    iget-wide v2, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->key:J

    cmp-long v4, v2, p1

    if-nez v4, :cond_1

    .line 844
    iget-object p1, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->value:Ljava/lang/Object;

    .line 845
    iget-object p2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->entries:[Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object v1, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->mapNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    aput-object v1, p2, p3

    move-object p3, v0

    goto :goto_1

    .line 850
    :cond_1
    :goto_0
    iget-object p3, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->mapNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p3, :cond_2

    .line 852
    monitor-exit p0

    return-object v1

    .line 854
    :cond_2
    :try_start_2
    iget-wide v2, p3, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->key:J

    cmp-long v4, v2, p1

    if-nez v4, :cond_6

    .line 855
    iget-object p1, p3, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->value:Ljava/lang/Object;

    .line 856
    iget-object p2, p3, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->mapNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object p2, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->mapNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    .line 858
    :goto_1
    iget p2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->mapSize:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->mapSize:I

    .line 859
    iget-wide v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->usedMemory:J

    iget p2, p3, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->memory:I

    int-to-long v2, p2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->usedMemory:J

    .line 860
    iget-object p2, p3, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    if-eqz p2, :cond_3

    .line 861
    invoke-direct {p0, p3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->removeFromStack(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    .line 863
    :cond_3
    invoke-virtual {p3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->isHot()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 866
    iget-object p2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object p2, p2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queueNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    .line 867
    iget-object p3, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    if-eq p2, p3, :cond_5

    .line 868
    invoke-direct {p0, p2}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->removeFromQueue(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    .line 869
    iget-object p3, p2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    if-nez p3, :cond_5

    .line 870
    invoke-direct {p0, p2}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->addToStackBottom(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    goto :goto_2

    .line 874
    :cond_4
    invoke-direct {p0, p3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->removeFromQueue(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    .line 876
    :cond_5
    :goto_2
    invoke-direct {p0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->pruneStack()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 877
    monitor-exit p0

    return-object p1

    :cond_6
    move-object v0, p3

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 836
    monitor-exit p0

    throw p1
.end method

.method setMaxMemory(J)V
    .locals 0

    .line 1081
    iput-wide p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->maxMemory:J

    return-void
.end method
