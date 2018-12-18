.class public final Lorg/acra/util/ApplicationStartupProcessor;
.super Ljava/lang/Object;
.source "ApplicationStartupProcessor.java"


# instance fields
.field private final config:Lorg/acra/config/ACRAConfiguration;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/acra/util/ApplicationStartupProcessor;->context:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lorg/acra/util/ApplicationStartupProcessor;->config:Lorg/acra/config/ACRAConfiguration;

    return-void
.end method

.method private getAppVersion()I
    .locals 2

    .line 97
    new-instance v0, Lorg/acra/util/PackageManagerWrapper;

    iget-object v1, p0, Lorg/acra/util/ApplicationStartupProcessor;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/acra/util/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-virtual {v0}, Lorg/acra/util/PackageManagerWrapper;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 99
    :cond_0
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    :goto_0
    return v0
.end method

.method private hasNonSilentApprovedReports([Ljava/io/File;)Z
    .locals 5

    .line 103
    new-instance v0, Lorg/acra/file/CrashReportFileNameParser;

    invoke-direct {v0}, Lorg/acra/file/CrashReportFileNameParser;-><init>()V

    .line 104
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 105
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/acra/file/CrashReportFileNameParser;->isSilent(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public deleteAllUnapprovedReportsBarOne()V
    .locals 3

    .line 62
    new-instance v0, Lorg/acra/file/BulkReportDeleter;

    iget-object v1, p0, Lorg/acra/util/ApplicationStartupProcessor;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/acra/file/BulkReportDeleter;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/acra/file/BulkReportDeleter;->deleteReports(ZI)V

    return-void
.end method

.method public deleteUnsentReportsFromOldAppVersion()V
    .locals 8

    .line 39
    new-instance v0, Lorg/acra/prefs/SharedPreferencesFactory;

    iget-object v1, p0, Lorg/acra/util/ApplicationStartupProcessor;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/acra/util/ApplicationStartupProcessor;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-direct {v0, v1, v2}, Lorg/acra/prefs/SharedPreferencesFactory;-><init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)V

    invoke-virtual {v0}, Lorg/acra/prefs/SharedPreferencesFactory;->create()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "acra.lastVersionNr"

    const/4 v2, 0x0

    .line 40
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v3, v1

    .line 41
    invoke-direct {p0}, Lorg/acra/util/ApplicationStartupProcessor;->getAppVersion()I

    move-result v1

    int-to-long v5, v1

    cmp-long v7, v5, v3

    if-lez v7, :cond_0

    .line 44
    new-instance v3, Lorg/acra/file/BulkReportDeleter;

    iget-object v4, p0, Lorg/acra/util/ApplicationStartupProcessor;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lorg/acra/file/BulkReportDeleter;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 45
    invoke-virtual {v3, v4, v2}, Lorg/acra/file/BulkReportDeleter;->deleteReports(ZI)V

    .line 46
    invoke-virtual {v3, v2, v2}, Lorg/acra/file/BulkReportDeleter;->deleteReports(ZI)V

    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "acra.lastVersionNr"

    .line 49
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 50
    invoke-static {v0}, Lorg/acra/prefs/PrefUtils;->save(Landroid/content/SharedPreferences$Editor;)V

    :cond_0
    return-void
.end method

.method public sendApprovedReports()V
    .locals 3

    .line 71
    new-instance v0, Lorg/acra/file/ReportLocator;

    iget-object v1, p0, Lorg/acra/util/ApplicationStartupProcessor;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/acra/file/ReportLocator;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-virtual {v0}, Lorg/acra/file/ReportLocator;->getApprovedReports()[Ljava/io/File;

    move-result-object v0

    .line 74
    array-length v1, v0

    if-nez v1, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object v1, p0, Lorg/acra/util/ApplicationStartupProcessor;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v1}, Lorg/acra/config/ACRAConfiguration;->reportingInteractionMode()Lorg/acra/ReportingInteractionMode;

    move-result-object v1

    sget-object v2, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-ne v1, v2, :cond_1

    invoke-direct {p0, v0}, Lorg/acra/util/ApplicationStartupProcessor;->hasNonSilentApprovedReports([Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lorg/acra/util/ApplicationStartupProcessor;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/acra/util/ApplicationStartupProcessor;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v1}, Lorg/acra/config/ACRAConfiguration;->resToastText()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/acra/util/ToastSender;->sendToast(Landroid/content/Context;II)V

    .line 83
    :cond_1
    new-instance v0, Lorg/acra/sender/SenderServiceStarter;

    iget-object v1, p0, Lorg/acra/util/ApplicationStartupProcessor;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/acra/util/ApplicationStartupProcessor;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-direct {v0, v1, v2}, Lorg/acra/sender/SenderServiceStarter;-><init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)V

    .line 84
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lorg/acra/util/ApplicationStartupProcessor$1;

    invoke-direct {v2, p0, v0}, Lorg/acra/util/ApplicationStartupProcessor$1;-><init>(Lorg/acra/util/ApplicationStartupProcessor;Lorg/acra/sender/SenderServiceStarter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
