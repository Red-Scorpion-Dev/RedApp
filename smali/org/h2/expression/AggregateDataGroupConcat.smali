.class Lorg/h2/expression/AggregateDataGroupConcat;
.super Lorg/h2/expression/AggregateData;
.source "AggregateDataGroupConcat.java"


# instance fields
.field private distinctValues:Lorg/h2/util/ValueHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/util/ValueHashMap<",
            "Lorg/h2/expression/AggregateDataGroupConcat;",
            ">;"
        }
    .end annotation
.end field

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/value/Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lorg/h2/expression/AggregateData;-><init>()V

    return-void
.end method

.method private groupDistinct(Lorg/h2/engine/Database;I)V
    .locals 3

    .line 53
    iget-object v0, p0, Lorg/h2/expression/AggregateDataGroupConcat;->distinctValues:Lorg/h2/util/ValueHashMap;

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lorg/h2/expression/AggregateDataGroupConcat;->distinctValues:Lorg/h2/util/ValueHashMap;

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

    .line 57
    invoke-virtual {p0, p1, p2, v2, v1}, Lorg/h2/expression/AggregateDataGroupConcat;->add(Lorg/h2/engine/Database;IZLorg/h2/value/Value;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method add(Lorg/h2/engine/Database;IZLorg/h2/value/Value;)V
    .locals 0

    .line 24
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p4, p1, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_2

    .line 28
    iget-object p1, p0, Lorg/h2/expression/AggregateDataGroupConcat;->distinctValues:Lorg/h2/util/ValueHashMap;

    if-nez p1, :cond_1

    .line 29
    invoke-static {}, Lorg/h2/util/ValueHashMap;->newInstance()Lorg/h2/util/ValueHashMap;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/expression/AggregateDataGroupConcat;->distinctValues:Lorg/h2/util/ValueHashMap;

    .line 31
    :cond_1
    iget-object p1, p0, Lorg/h2/expression/AggregateDataGroupConcat;->distinctValues:Lorg/h2/util/ValueHashMap;

    invoke-virtual {p1, p4, p0}, Lorg/h2/util/ValueHashMap;->put(Lorg/h2/value/Value;Ljava/lang/Object;)V

    return-void

    .line 34
    :cond_2
    iget-object p1, p0, Lorg/h2/expression/AggregateDataGroupConcat;->list:Ljava/util/ArrayList;

    if-nez p1, :cond_3

    .line 35
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/expression/AggregateDataGroupConcat;->list:Ljava/util/ArrayList;

    .line 37
    :cond_3
    iget-object p1, p0, Lorg/h2/expression/AggregateDataGroupConcat;->list:Ljava/util/ArrayList;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/value/Value;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/h2/expression/AggregateDataGroupConcat;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method getValue(Lorg/h2/engine/Database;IZ)Lorg/h2/value/Value;
    .locals 0

    if-eqz p3, :cond_0

    .line 43
    invoke-direct {p0, p1, p2}, Lorg/h2/expression/AggregateDataGroupConcat;->groupDistinct(Lorg/h2/engine/Database;I)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
