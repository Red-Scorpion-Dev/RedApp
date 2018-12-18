.class public Lorg/h2/engine/QueryStatisticsData;
.super Ljava/lang/Object;
.source "QueryStatisticsData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/engine/QueryStatisticsData$QueryEntry;
    }
.end annotation


# static fields
.field private static final QUERY_ENTRY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/h2/engine/QueryStatisticsData$QueryEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/engine/QueryStatisticsData$QueryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private maxQueryEntries:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lorg/h2/engine/QueryStatisticsData$1;

    invoke-direct {v0}, Lorg/h2/engine/QueryStatisticsData$1;-><init>()V

    sput-object v0, Lorg/h2/engine/QueryStatisticsData;->QUERY_ENTRY_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/h2/engine/QueryStatisticsData;->map:Ljava/util/HashMap;

    .line 36
    iput p1, p0, Lorg/h2/engine/QueryStatisticsData;->maxQueryEntries:I

    return-void
.end method


# virtual methods
.method public declared-synchronized getQueries()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/h2/engine/QueryStatisticsData$QueryEntry;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 46
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    iget-object v1, p0, Lorg/h2/engine/QueryStatisticsData;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 49
    sget-object v1, Lorg/h2/engine/QueryStatisticsData;->QUERY_ENTRY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lorg/h2/engine/QueryStatisticsData;->maxQueryEntries:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 45
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaxQueryEntries(I)V
    .locals 0

    monitor-enter p0

    .line 40
    :try_start_0
    iput p1, p0, Lorg/h2/engine/QueryStatisticsData;->maxQueryEntries:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 39
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized update(Ljava/lang/String;JI)V
    .locals 2

    monitor-enter p0

    .line 63
    :try_start_0
    iget-object v0, p0, Lorg/h2/engine/QueryStatisticsData;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;

    invoke-direct {v0}, Lorg/h2/engine/QueryStatisticsData$QueryEntry;-><init>()V

    .line 66
    iput-object p1, v0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->sqlStatement:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lorg/h2/engine/QueryStatisticsData;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_0
    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->update(JI)V

    .line 73
    iget-object p1, p0, Lorg/h2/engine/QueryStatisticsData;->map:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lorg/h2/engine/QueryStatisticsData;->maxQueryEntries:I

    int-to-float p2, p2

    const/high16 p3, 0x3fc00000    # 1.5f

    mul-float p2, p2, p3

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    .line 75
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    iget-object p2, p0, Lorg/h2/engine/QueryStatisticsData;->map:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 77
    sget-object p2, Lorg/h2/engine/QueryStatisticsData;->QUERY_ENTRY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 79
    new-instance p2, Ljava/util/HashSet;

    const/4 p3, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    div-int/lit8 p4, p4, 0x3

    invoke-virtual {p1, p3, p4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 83
    iget-object p1, p0, Lorg/h2/engine/QueryStatisticsData;->map:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 84
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 85
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 86
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 87
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 91
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 62
    monitor-exit p0

    throw p1
.end method
