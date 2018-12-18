.class Lorg/h2/expression/AggregateDataHistogram;
.super Lorg/h2/expression/AggregateData;
.source "AggregateDataHistogram.java"


# instance fields
.field private count:J

.field private distinctValues:Lorg/h2/util/ValueHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/util/ValueHashMap<",
            "Lorg/h2/expression/AggregateDataHistogram;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lorg/h2/expression/AggregateData;-><init>()V

    return-void
.end method

.method private groupDistinct(Lorg/h2/engine/Database;I)V
    .locals 3

    .line 69
    iget-object v0, p0, Lorg/h2/expression/AggregateDataHistogram;->distinctValues:Lorg/h2/util/ValueHashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    .line 72
    iput-wide v0, p0, Lorg/h2/expression/AggregateDataHistogram;->count:J

    .line 73
    iget-object v0, p0, Lorg/h2/expression/AggregateDataHistogram;->distinctValues:Lorg/h2/util/ValueHashMap;

    invoke-virtual {v0}, Lorg/h2/util/ValueHashMap;->keys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/value/Value;

    const/4 v2, 0x0

    .line 74
    invoke-virtual {p0, p1, p2, v2, v1}, Lorg/h2/expression/AggregateDataHistogram;->add(Lorg/h2/engine/Database;IZLorg/h2/value/Value;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method add(Lorg/h2/engine/Database;IZLorg/h2/value/Value;)V
    .locals 2

    .line 27
    iget-object p1, p0, Lorg/h2/expression/AggregateDataHistogram;->distinctValues:Lorg/h2/util/ValueHashMap;

    if-nez p1, :cond_0

    .line 28
    invoke-static {}, Lorg/h2/util/ValueHashMap;->newInstance()Lorg/h2/util/ValueHashMap;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/expression/AggregateDataHistogram;->distinctValues:Lorg/h2/util/ValueHashMap;

    .line 30
    :cond_0
    iget-object p1, p0, Lorg/h2/expression/AggregateDataHistogram;->distinctValues:Lorg/h2/util/ValueHashMap;

    invoke-virtual {p1, p4}, Lorg/h2/util/ValueHashMap;->get(Lorg/h2/value/Value;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/expression/AggregateDataHistogram;

    if-nez p1, :cond_1

    .line 32
    iget-object p2, p0, Lorg/h2/expression/AggregateDataHistogram;->distinctValues:Lorg/h2/util/ValueHashMap;

    invoke-virtual {p2}, Lorg/h2/util/ValueHashMap;->size()I

    move-result p2

    const/16 p3, 0x2710

    if-ge p2, p3, :cond_1

    .line 33
    new-instance p1, Lorg/h2/expression/AggregateDataHistogram;

    invoke-direct {p1}, Lorg/h2/expression/AggregateDataHistogram;-><init>()V

    .line 34
    iget-object p2, p0, Lorg/h2/expression/AggregateDataHistogram;->distinctValues:Lorg/h2/util/ValueHashMap;

    invoke-virtual {p2, p4, p1}, Lorg/h2/util/ValueHashMap;->put(Lorg/h2/value/Value;Ljava/lang/Object;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 38
    iget-wide p2, p1, Lorg/h2/expression/AggregateDataHistogram;->count:J

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    iput-wide p2, p1, Lorg/h2/expression/AggregateDataHistogram;->count:J

    :cond_2
    return-void
.end method

.method getValue(Lorg/h2/engine/Database;IZ)Lorg/h2/value/Value;
    .locals 6

    if-eqz p3, :cond_0

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lorg/h2/expression/AggregateDataHistogram;->count:J

    .line 46
    invoke-direct {p0, p1, p2}, Lorg/h2/expression/AggregateDataHistogram;->groupDistinct(Lorg/h2/engine/Database;I)V

    .line 48
    :cond_0
    iget-object p3, p0, Lorg/h2/expression/AggregateDataHistogram;->distinctValues:Lorg/h2/util/ValueHashMap;

    invoke-virtual {p3}, Lorg/h2/util/ValueHashMap;->size()I

    move-result p3

    new-array p3, p3, [Lorg/h2/value/ValueArray;

    .line 50
    iget-object v0, p0, Lorg/h2/expression/AggregateDataHistogram;->distinctValues:Lorg/h2/util/ValueHashMap;

    invoke-virtual {v0}, Lorg/h2/util/ValueHashMap;->keys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/value/Value;

    .line 51
    iget-object v4, p0, Lorg/h2/expression/AggregateDataHistogram;->distinctValues:Lorg/h2/util/ValueHashMap;

    invoke-virtual {v4, v3}, Lorg/h2/util/ValueHashMap;->get(Lorg/h2/value/Value;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/expression/AggregateDataHistogram;

    const/4 v5, 0x2

    .line 52
    new-array v5, v5, [Lorg/h2/value/Value;

    aput-object v3, v5, v1

    iget-wide v3, v4, Lorg/h2/expression/AggregateDataHistogram;->count:J

    invoke-static {v3, v4}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v5, v4

    invoke-static {v5}, Lorg/h2/value/ValueArray;->get([Lorg/h2/value/Value;)Lorg/h2/value/ValueArray;

    move-result-object v3

    aput-object v3, p3, v2

    add-int/2addr v2, v4

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getCompareMode()Lorg/h2/value/CompareMode;

    move-result-object p1

    .line 56
    new-instance v0, Lorg/h2/expression/AggregateDataHistogram$1;

    invoke-direct {v0, p0, p1}, Lorg/h2/expression/AggregateDataHistogram$1;-><init>(Lorg/h2/expression/AggregateDataHistogram;Lorg/h2/value/CompareMode;)V

    invoke-static {p3, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 64
    invoke-static {p3}, Lorg/h2/value/ValueArray;->get([Lorg/h2/value/Value;)Lorg/h2/value/ValueArray;

    move-result-object p1

    .line 65
    invoke-virtual {p1, p2}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1
.end method
