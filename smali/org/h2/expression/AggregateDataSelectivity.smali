.class Lorg/h2/expression/AggregateDataSelectivity;
.super Lorg/h2/expression/AggregateData;
.source "AggregateDataSelectivity.java"


# instance fields
.field private count:J

.field private distinctHashes:Lorg/h2/util/IntIntHashMap;

.field private m2:D


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lorg/h2/expression/AggregateData;-><init>()V

    return-void
.end method


# virtual methods
.method add(Lorg/h2/engine/Database;IZLorg/h2/value/Value;)V
    .locals 2

    .line 24
    iget-wide p1, p0, Lorg/h2/expression/AggregateDataSelectivity;->count:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/h2/expression/AggregateDataSelectivity;->count:J

    .line 25
    iget-object p1, p0, Lorg/h2/expression/AggregateDataSelectivity;->distinctHashes:Lorg/h2/util/IntIntHashMap;

    if-nez p1, :cond_0

    .line 26
    new-instance p1, Lorg/h2/util/IntIntHashMap;

    invoke-direct {p1}, Lorg/h2/util/IntIntHashMap;-><init>()V

    iput-object p1, p0, Lorg/h2/expression/AggregateDataSelectivity;->distinctHashes:Lorg/h2/util/IntIntHashMap;

    .line 28
    :cond_0
    iget-object p1, p0, Lorg/h2/expression/AggregateDataSelectivity;->distinctHashes:Lorg/h2/util/IntIntHashMap;

    invoke-virtual {p1}, Lorg/h2/util/IntIntHashMap;->size()I

    move-result p1

    const/16 p2, 0x2710

    if-le p1, p2, :cond_1

    .line 30
    new-instance p2, Lorg/h2/util/IntIntHashMap;

    invoke-direct {p2}, Lorg/h2/util/IntIntHashMap;-><init>()V

    iput-object p2, p0, Lorg/h2/expression/AggregateDataSelectivity;->distinctHashes:Lorg/h2/util/IntIntHashMap;

    .line 31
    iget-wide p2, p0, Lorg/h2/expression/AggregateDataSelectivity;->m2:D

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p2, v0

    iput-wide p2, p0, Lorg/h2/expression/AggregateDataSelectivity;->m2:D

    .line 33
    :cond_1
    invoke-virtual {p4}, Lorg/h2/value/Value;->hashCode()I

    move-result p1

    .line 35
    iget-object p2, p0, Lorg/h2/expression/AggregateDataSelectivity;->distinctHashes:Lorg/h2/util/IntIntHashMap;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lorg/h2/util/IntIntHashMap;->put(II)V

    return-void
.end method

.method getValue(Lorg/h2/engine/Database;IZ)Lorg/h2/value/Value;
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p3, :cond_0

    .line 41
    iput-wide v0, p0, Lorg/h2/expression/AggregateDataSelectivity;->count:J

    .line 45
    :cond_0
    iget-wide v2, p0, Lorg/h2/expression/AggregateDataSelectivity;->count:J

    cmp-long p1, v2, v0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 48
    :cond_1
    iget-wide v0, p0, Lorg/h2/expression/AggregateDataSelectivity;->m2:D

    iget-object p1, p0, Lorg/h2/expression/AggregateDataSelectivity;->distinctHashes:Lorg/h2/util/IntIntHashMap;

    invoke-virtual {p1}, Lorg/h2/util/IntIntHashMap;->size()I

    move-result p1

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/expression/AggregateDataSelectivity;->m2:D

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 49
    iget-wide v2, p0, Lorg/h2/expression/AggregateDataSelectivity;->m2:D

    mul-double v2, v2, v0

    iget-wide v0, p0, Lorg/h2/expression/AggregateDataSelectivity;->count:J

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    iput-wide v2, p0, Lorg/h2/expression/AggregateDataSelectivity;->m2:D

    .line 50
    iget-wide v0, p0, Lorg/h2/expression/AggregateDataSelectivity;->m2:D

    double-to-int p1, v0

    const/16 p3, 0x64

    if-gtz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    if-le p1, p3, :cond_3

    const/16 p1, 0x64

    .line 53
    :cond_3
    :goto_0
    invoke-static {p1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object p1

    .line 54
    invoke-virtual {p1, p2}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1
.end method
