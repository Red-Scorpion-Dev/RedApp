.class public Lorg/briarproject/briar/android/reporting/BriarReportSender;
.super Ljava/lang/Object;
.source "BriarReportSender.java"

# interfaces
.implements Lorg/acra/sender/ReportSender;


# instance fields
.field private final component:Lorg/briarproject/briar/android/AndroidComponent;

.field reporter:Lorg/briarproject/bramble/api/reporting/DevReporter;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/AndroidComponent;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/briarproject/briar/android/reporting/BriarReportSender;->component:Lorg/briarproject/briar/android/AndroidComponent;

    return-void
.end method


# virtual methods
.method public send(Landroid/content/Context;Lorg/acra/collector/CrashReportData;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/acra/sender/ReportSenderException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lorg/briarproject/briar/android/reporting/BriarReportSender;->component:Lorg/briarproject/briar/android/AndroidComponent;

    invoke-interface {v0, p0}, Lorg/briarproject/briar/android/AndroidComponent;->inject(Lorg/briarproject/briar/android/reporting/BriarReportSender;)V

    .line 36
    invoke-virtual {p2}, Lorg/acra/collector/CrashReportData;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    :try_start_0
    invoke-static {p1}, Lorg/briarproject/bramble/util/AndroidUtils;->getReportDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    .line 39
    sget-object v1, Lorg/acra/ReportField;->REPORT_ID:Lorg/acra/ReportField;

    invoke-virtual {p2, v1}, Lorg/acra/collector/CrashReportData;->getProperty(Lorg/acra/ReportField;)Ljava/lang/String;

    move-result-object p2

    .line 40
    iget-object v1, p0, Lorg/briarproject/briar/android/reporting/BriarReportSender;->reporter:Lorg/briarproject/bramble/api/reporting/DevReporter;

    invoke-interface {v1, p1, p2, v0}, Lorg/briarproject/bramble/api/reporting/DevReporter;->encryptReportToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 42
    new-instance p2, Lorg/acra/sender/ReportSenderException;

    const-string v0, "Failed to encrypt report"

    invoke-direct {p2, v0, p1}, Lorg/acra/sender/ReportSenderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
