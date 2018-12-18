.class public abstract Lorg/acra/dialog/BaseCrashReportDialog;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseCrashReportDialog.java"


# instance fields
.field private config:Lorg/acra/config/ACRAConfiguration;

.field private exception:Ljava/lang/Throwable;

.field private reportFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final cancelReports()V
    .locals 2

    .line 112
    new-instance v0, Lorg/acra/file/BulkReportDeleter;

    invoke-virtual {p0}, Lorg/acra/dialog/BaseCrashReportDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/acra/file/BulkReportDeleter;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/acra/file/BulkReportDeleter;->deleteReports(ZI)V

    return-void
.end method

.method protected final getConfig()Lorg/acra/config/ACRAConfiguration;
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/acra/dialog/BaseCrashReportDialog;->config:Lorg/acra/config/ACRAConfiguration;

    return-object v0
.end method

.method protected final getException()Ljava/lang/Throwable;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/acra/dialog/BaseCrashReportDialog;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method protected init(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 59
    invoke-virtual {p0, p1}, Lorg/acra/dialog/BaseCrashReportDialog;->preInit(Landroid/os/Bundle;)V

    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    sget-boolean v0, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CrashReportDialog extras="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/acra/dialog/BaseCrashReportDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    invoke-virtual {p0}, Lorg/acra/dialog/BaseCrashReportDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "REPORT_CONFIG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Lorg/acra/dialog/BaseCrashReportDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "REPORT_FILE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 69
    invoke-virtual {p0}, Lorg/acra/dialog/BaseCrashReportDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "REPORT_EXCEPTION"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    .line 70
    invoke-virtual {p0}, Lorg/acra/dialog/BaseCrashReportDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "FORCE_CANCEL"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 73
    sget-boolean p1, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz p1, :cond_1

    sget-object p1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Forced reports deletion."

    invoke-interface {p1, v0, v1}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_1
    invoke-virtual {p0}, Lorg/acra/dialog/BaseCrashReportDialog;->cancelReports()V

    .line 75
    invoke-virtual {p0}, Lorg/acra/dialog/BaseCrashReportDialog;->finish()V

    goto :goto_0

    .line 76
    :cond_2
    instance-of v3, v0, Lorg/acra/config/ACRAConfiguration;

    if-eqz v3, :cond_4

    instance-of v3, v1, Ljava/io/File;

    if-eqz v3, :cond_4

    instance-of v3, v2, Ljava/lang/Throwable;

    if-nez v3, :cond_3

    if-nez v2, :cond_4

    .line 77
    :cond_3
    check-cast v0, Lorg/acra/config/ACRAConfiguration;

    iput-object v0, p0, Lorg/acra/dialog/BaseCrashReportDialog;->config:Lorg/acra/config/ACRAConfiguration;

    .line 78
    check-cast v1, Ljava/io/File;

    iput-object v1, p0, Lorg/acra/dialog/BaseCrashReportDialog;->reportFile:Ljava/io/File;

    .line 79
    check-cast v2, Ljava/lang/Throwable;

    iput-object v2, p0, Lorg/acra/dialog/BaseCrashReportDialog;->exception:Ljava/lang/Throwable;

    .line 80
    invoke-virtual {p0, p1}, Lorg/acra/dialog/BaseCrashReportDialog;->init(Landroid/os/Bundle;)V

    goto :goto_0

    .line 82
    :cond_4
    sget-object p1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Illegal or incomplete call of BaseCrashReportDialog."

    invoke-interface {p1, v0, v1}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0}, Lorg/acra/dialog/BaseCrashReportDialog;->finish()V

    :goto_0
    return-void
.end method

.method protected preInit(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected final sendCrash(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 123
    new-instance v0, Lorg/acra/file/CrashReportPersister;

    invoke-direct {v0}, Lorg/acra/file/CrashReportPersister;-><init>()V

    .line 125
    :try_start_0
    sget-boolean v1, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz v1, :cond_0

    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add user comment to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/acra/dialog/BaseCrashReportDialog;->reportFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    iget-object v1, p0, Lorg/acra/dialog/BaseCrashReportDialog;->reportFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/acra/file/CrashReportPersister;->load(Ljava/io/File;)Lorg/acra/collector/CrashReportData;

    move-result-object v1

    .line 127
    sget-object v2, Lorg/acra/ReportField;->USER_COMMENT:Lorg/acra/ReportField;

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-virtual {v1, v2, p1}, Lorg/acra/collector/CrashReportData;->putString(Lorg/acra/ReportField;Ljava/lang/String;)V

    .line 128
    sget-object p1, Lorg/acra/ReportField;->USER_EMAIL:Lorg/acra/ReportField;

    if-nez p2, :cond_2

    const-string p2, ""

    :cond_2
    invoke-virtual {v1, p1, p2}, Lorg/acra/collector/CrashReportData;->putString(Lorg/acra/ReportField;Ljava/lang/String;)V

    .line 129
    iget-object p1, p0, Lorg/acra/dialog/BaseCrashReportDialog;->reportFile:Ljava/io/File;

    invoke-virtual {v0, v1, p1}, Lorg/acra/file/CrashReportPersister;->store(Lorg/acra/collector/CrashReportData;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 133
    sget-object p2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "User comment not added: "

    invoke-interface {p2, v0, v1, p1}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 131
    sget-object p2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "User comment not added: "

    invoke-interface {p2, v0, v1, p1}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    :goto_0
    new-instance p1, Lorg/acra/sender/SenderServiceStarter;

    invoke-virtual {p0}, Lorg/acra/dialog/BaseCrashReportDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lorg/acra/dialog/BaseCrashReportDialog;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-direct {p1, p2, v0}, Lorg/acra/sender/SenderServiceStarter;-><init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)V

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 138
    invoke-virtual {p1, p2, v0}, Lorg/acra/sender/SenderServiceStarter;->startService(ZZ)V

    .line 141
    iget-object p1, p0, Lorg/acra/dialog/BaseCrashReportDialog;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {p1}, Lorg/acra/config/ACRAConfiguration;->resDialogOkToast()I

    move-result p1

    if-eqz p1, :cond_3

    .line 143
    invoke-virtual {p0}, Lorg/acra/dialog/BaseCrashReportDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, v0}, Lorg/acra/util/ToastSender;->sendToast(Landroid/content/Context;II)V

    :cond_3
    return-void
.end method
