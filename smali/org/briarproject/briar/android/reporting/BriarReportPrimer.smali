.class public Lorg/briarproject/briar/android/reporting/BriarReportPrimer;
.super Ljava/lang/Object;
.source "BriarReportPrimer.java"

# interfaces
.implements Lorg/acra/builder/ReportPrimer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/reporting/BriarReportPrimer$SingleShotAndroidExecutor;,
        Lorg/briarproject/briar/android/reporting/BriarReportPrimer$CustomDataTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public primeReport(Landroid/content/Context;Lorg/acra/builder/ReportBuilder;)V
    .locals 2

    .line 52
    new-instance v0, Lorg/briarproject/briar/android/reporting/BriarReportPrimer$CustomDataTask;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/briarproject/briar/android/reporting/BriarReportPrimer$CustomDataTask;-><init>(Landroid/content/Context;Lorg/briarproject/briar/android/reporting/BriarReportPrimer$1;)V

    .line 53
    new-instance p1, Ljava/util/concurrent/FutureTask;

    invoke-direct {p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 55
    new-instance v0, Lorg/briarproject/briar/android/reporting/BriarReportPrimer$SingleShotAndroidExecutor;

    invoke-direct {v0, p1, v1}, Lorg/briarproject/briar/android/reporting/BriarReportPrimer$SingleShotAndroidExecutor;-><init>(Ljava/lang/Runnable;Lorg/briarproject/briar/android/reporting/BriarReportPrimer$1;)V

    invoke-virtual {v0}, Lorg/briarproject/briar/android/reporting/BriarReportPrimer$SingleShotAndroidExecutor;->start()V

    .line 57
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p2, p1}, Lorg/acra/builder/ReportBuilder;->customData(Ljava/util/Map;)Lorg/acra/builder/ReportBuilder;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Custom data exception"

    .line 59
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lorg/acra/builder/ReportBuilder;->customData(Ljava/lang/String;Ljava/lang/String;)Lorg/acra/builder/ReportBuilder;

    :goto_0
    return-void
.end method
