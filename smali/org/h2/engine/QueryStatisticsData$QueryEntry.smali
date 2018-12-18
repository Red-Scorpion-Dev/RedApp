.class public final Lorg/h2/engine/QueryStatisticsData$QueryEntry;
.super Ljava/lang/Object;
.source "QueryStatisticsData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/engine/QueryStatisticsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QueryEntry"
.end annotation


# instance fields
.field public count:I

.field public executionTimeCumulative:J

.field private executionTimeM2:D

.field public executionTimeMax:J

.field public executionTimeMean:D

.field public executionTimeMin:J

.field public lastUpdateTime:J

.field public rowCountCumulative:J

.field private rowCountM2:D

.field public rowCountMax:I

.field public rowCountMean:D

.field public rowCountMin:I

.field public sqlStatement:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExecutionTimeStandardDeviation()D
    .locals 4

    .line 190
    iget-wide v0, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->executionTimeM2:D

    iget v2, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->count:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getRowCountStandardDeviation()D
    .locals 4

    .line 195
    iget-wide v0, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->rowCountM2:D

    iget v2, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->count:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method update(JI)V
    .locals 8

    .line 168
    iget v0, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->count:I

    .line 169
    iget-wide v0, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->executionTimeMin:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->executionTimeMin:J

    .line 170
    iget-wide v0, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->executionTimeMax:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->executionTimeMax:J

    .line 171
    iget v0, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->rowCountMin:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->rowCountMin:I

    .line 172
    iget v0, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->rowCountMax:I

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->rowCountMax:I

    int-to-double v0, p3

    .line 174
    iget-wide v2, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->rowCountMean:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v2, v0, v2

    .line 175
    iget-wide v4, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->rowCountMean:D

    iget v6, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->count:I

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double v6, v2, v6

    add-double/2addr v4, v6

    iput-wide v4, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->rowCountMean:D

    .line 176
    iget-wide v4, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->rowCountM2:D

    iget-wide v6, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->rowCountMean:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v6

    mul-double v2, v2, v0

    add-double/2addr v4, v2

    iput-wide v4, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->rowCountM2:D

    long-to-double v0, p1

    .line 178
    iget-wide v2, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->executionTimeMean:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v2, v0, v2

    .line 179
    iget-wide v4, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->executionTimeMean:D

    iget v6, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->count:I

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double v6, v2, v6

    add-double/2addr v4, v6

    iput-wide v4, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->executionTimeMean:D

    .line 180
    iget-wide v4, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->executionTimeM2:D

    iget-wide v6, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->executionTimeMean:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v6

    mul-double v2, v2, v0

    add-double/2addr v4, v2

    iput-wide v4, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->executionTimeM2:D

    .line 182
    iget-wide v0, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->executionTimeCumulative:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->executionTimeCumulative:J

    .line 183
    iget-wide p1, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->rowCountCumulative:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->rowCountCumulative:J

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->lastUpdateTime:J

    return-void
.end method
