.class Lorg/acra/builder/ReportExecutor$TimeHelper;
.super Ljava/lang/Object;
.source "ReportExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/acra/builder/ReportExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeHelper"
.end annotation


# instance fields
.field private initialTimeMillis:Ljava/lang/Long;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/acra/builder/ReportExecutor$1;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lorg/acra/builder/ReportExecutor$TimeHelper;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lorg/acra/builder/ReportExecutor$TimeHelper;)Ljava/lang/Long;
    .locals 0

    .line 77
    iget-object p0, p0, Lorg/acra/builder/ReportExecutor$TimeHelper;->initialTimeMillis:Ljava/lang/Long;

    return-object p0
.end method


# virtual methods
.method public getElapsedTime()J
    .locals 4

    .line 89
    iget-object v0, p0, Lorg/acra/builder/ReportExecutor$TimeHelper;->initialTimeMillis:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/acra/builder/ReportExecutor$TimeHelper;->initialTimeMillis:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public setInitialTimeMillis(J)V
    .locals 0

    .line 82
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/builder/ReportExecutor$TimeHelper;->initialTimeMillis:Ljava/lang/Long;

    return-void
.end method
