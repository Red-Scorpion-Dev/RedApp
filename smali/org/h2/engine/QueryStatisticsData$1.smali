.class final Lorg/h2/engine/QueryStatisticsData$1;
.super Ljava/lang/Object;
.source "QueryStatisticsData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/engine/QueryStatisticsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/h2/engine/QueryStatisticsData$QueryEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 23
    check-cast p1, Lorg/h2/engine/QueryStatisticsData$QueryEntry;

    check-cast p2, Lorg/h2/engine/QueryStatisticsData$QueryEntry;

    invoke-virtual {p0, p1, p2}, Lorg/h2/engine/QueryStatisticsData$1;->compare(Lorg/h2/engine/QueryStatisticsData$QueryEntry;Lorg/h2/engine/QueryStatisticsData$QueryEntry;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/h2/engine/QueryStatisticsData$QueryEntry;Lorg/h2/engine/QueryStatisticsData$QueryEntry;)I
    .locals 2

    .line 26
    iget-wide v0, p1, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->lastUpdateTime:J

    iget-wide p1, p2, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->lastUpdateTime:J

    sub-long/2addr v0, p1

    long-to-float p1, v0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method
