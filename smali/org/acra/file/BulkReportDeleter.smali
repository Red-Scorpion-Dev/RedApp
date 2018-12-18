.class public final Lorg/acra/file/BulkReportDeleter;
.super Ljava/lang/Object;
.source "BulkReportDeleter.java"


# instance fields
.field private final reportLocator:Lorg/acra/file/ReportLocator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lorg/acra/file/ReportLocator;

    invoke-direct {v0, p1}, Lorg/acra/file/ReportLocator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/acra/file/BulkReportDeleter;->reportLocator:Lorg/acra/file/ReportLocator;

    return-void
.end method


# virtual methods
.method public deleteReports(ZI)V
    .locals 5

    if-eqz p1, :cond_0

    .line 30
    iget-object p1, p0, Lorg/acra/file/BulkReportDeleter;->reportLocator:Lorg/acra/file/ReportLocator;

    invoke-virtual {p1}, Lorg/acra/file/ReportLocator;->getApprovedReports()[Ljava/io/File;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/acra/file/BulkReportDeleter;->reportLocator:Lorg/acra/file/ReportLocator;

    invoke-virtual {p1}, Lorg/acra/file/ReportLocator;->getUnapprovedReports()[Ljava/io/File;

    move-result-object p1

    .line 32
    :goto_0
    new-instance v0, Lorg/acra/file/LastModifiedComparator;

    invoke-direct {v0}, Lorg/acra/file/LastModifiedComparator;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 34
    :goto_1
    array-length v1, p1

    sub-int/2addr v1, p2

    if-ge v0, v1, :cond_2

    .line 35
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    .line 36
    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not delete report : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
