.class public Lorg/acra/ErrorReporter;
.super Ljava/lang/Object;
.source "ErrorReporter.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final config:Lorg/acra/config/ACRAConfiguration;

.field private final context:Landroid/app/Application;

.field private final crashReportDataFactory:Lorg/acra/collector/CrashReportDataFactory;

.field private volatile exceptionHandlerInitializer:Lorg/acra/ExceptionHandlerInitializer;

.field private final reportExecutor:Lorg/acra/builder/ReportExecutor;

.field private final supportedAndroidVersion:Z


# direct methods
.method constructor <init>(Landroid/app/Application;Lorg/acra/config/ACRAConfiguration;Landroid/content/SharedPreferences;ZZZ)V
    .locals 7

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lorg/acra/ErrorReporter$1;

    invoke-direct {v0, p0}, Lorg/acra/ErrorReporter$1;-><init>(Lorg/acra/ErrorReporter;)V

    iput-object v0, p0, Lorg/acra/ErrorReporter;->exceptionHandlerInitializer:Lorg/acra/ExceptionHandlerInitializer;

    .line 100
    iput-object p1, p0, Lorg/acra/ErrorReporter;->context:Landroid/app/Application;

    .line 101
    iput-object p2, p0, Lorg/acra/ErrorReporter;->config:Lorg/acra/config/ACRAConfiguration;

    .line 102
    iput-boolean p5, p0, Lorg/acra/ErrorReporter;->supportedAndroidVersion:Z

    .line 107
    invoke-virtual {p2}, Lorg/acra/config/ACRAConfiguration;->reportContent()Lorg/acra/collections/ImmutableSet;

    move-result-object p5

    sget-object v0, Lorg/acra/ReportField;->INITIAL_CONFIGURATION:Lorg/acra/ReportField;

    invoke-virtual {p5, v0}, Lorg/acra/collections/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    .line 108
    iget-object p5, p0, Lorg/acra/ErrorReporter;->context:Landroid/app/Application;

    invoke-static {p5}, Lorg/acra/collector/ConfigurationCollector;->collectConfiguration(Landroid/content/Context;)Lorg/acra/model/Element;

    move-result-object p5

    :goto_0
    move-object v5, p5

    goto :goto_1

    .line 110
    :cond_0
    sget-object p5, Lorg/acra/ACRAConstants;->NOT_AVAILABLE:Lorg/acra/model/Element;

    goto :goto_0

    .line 115
    :goto_1
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4}, Ljava/util/GregorianCalendar;-><init>()V

    .line 117
    new-instance p5, Lorg/acra/collector/CrashReportDataFactory;

    iget-object v1, p0, Lorg/acra/ErrorReporter;->context:Landroid/app/Application;

    move-object v0, p5

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/acra/collector/CrashReportDataFactory;-><init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;Landroid/content/SharedPreferences;Ljava/util/Calendar;Lorg/acra/model/Element;)V

    iput-object p5, p0, Lorg/acra/ErrorReporter;->crashReportDataFactory:Lorg/acra/collector/CrashReportDataFactory;

    if-eqz p6, :cond_1

    .line 121
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p3

    .line 122
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :goto_2
    move-object v4, p3

    goto :goto_3

    :cond_1
    const/4 p3, 0x0

    goto :goto_2

    .line 127
    :goto_3
    new-instance p3, Lorg/acra/builder/LastActivityManager;

    iget-object p5, p0, Lorg/acra/ErrorReporter;->context:Landroid/app/Application;

    invoke-direct {p3, p5}, Lorg/acra/builder/LastActivityManager;-><init>(Landroid/app/Application;)V

    .line 128
    new-instance p5, Lorg/acra/util/InstanceCreator;

    invoke-direct {p5}, Lorg/acra/util/InstanceCreator;-><init>()V

    .line 129
    invoke-virtual {p2}, Lorg/acra/config/ACRAConfiguration;->reportPrimerClass()Ljava/lang/Class;

    move-result-object p6

    new-instance v0, Lorg/acra/builder/NoOpReportPrimer;

    invoke-direct {v0}, Lorg/acra/builder/NoOpReportPrimer;-><init>()V

    invoke-virtual {p5, p6, v0}, Lorg/acra/util/InstanceCreator;->create(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    move-object v5, p5

    check-cast v5, Lorg/acra/builder/ReportPrimer;

    .line 130
    new-instance v6, Lorg/acra/util/ProcessFinisher;

    invoke-direct {v6, p1, p2, p3}, Lorg/acra/util/ProcessFinisher;-><init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;Lorg/acra/builder/LastActivityManager;)V

    .line 132
    new-instance p3, Lorg/acra/builder/ReportExecutor;

    iget-object v3, p0, Lorg/acra/ErrorReporter;->crashReportDataFactory:Lorg/acra/collector/CrashReportDataFactory;

    move-object v0, p3

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/acra/builder/ReportExecutor;-><init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;Lorg/acra/collector/CrashReportDataFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Lorg/acra/builder/ReportPrimer;Lorg/acra/util/ProcessFinisher;)V

    iput-object p3, p0, Lorg/acra/ErrorReporter;->reportExecutor:Lorg/acra/builder/ReportExecutor;

    .line 133
    iget-object p1, p0, Lorg/acra/ErrorReporter;->reportExecutor:Lorg/acra/builder/ReportExecutor;

    invoke-virtual {p1, p4}, Lorg/acra/builder/ReportExecutor;->setEnabled(Z)V

    return-void
.end method

.method private performDeprecatedReportPriming()V
    .locals 4

    .line 375
    :try_start_0
    iget-object v0, p0, Lorg/acra/ErrorReporter;->exceptionHandlerInitializer:Lorg/acra/ExceptionHandlerInitializer;

    invoke-interface {v0, p0}, Lorg/acra/ExceptionHandlerInitializer;->initializeExceptionHandler(Lorg/acra/ErrorReporter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 377
    :catch_0
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to initialize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/acra/ErrorReporter;->exceptionHandlerInitializer:Lorg/acra/ExceptionHandlerInitializer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from #handleException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public addCustomData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 145
    invoke-virtual {p0, p1, p2}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public checkReportsOnApplicationStart()V
    .locals 3

    .line 321
    new-instance v0, Lorg/acra/util/ApplicationStartupProcessor;

    iget-object v1, p0, Lorg/acra/ErrorReporter;->context:Landroid/app/Application;

    iget-object v2, p0, Lorg/acra/ErrorReporter;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-direct {v0, v1, v2}, Lorg/acra/util/ApplicationStartupProcessor;-><init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)V

    .line 322
    iget-object v1, p0, Lorg/acra/ErrorReporter;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v1}, Lorg/acra/config/ACRAConfiguration;->deleteOldUnsentReportsOnApplicationStart()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {v0}, Lorg/acra/util/ApplicationStartupProcessor;->deleteUnsentReportsFromOldAppVersion()V

    .line 325
    :cond_0
    iget-object v1, p0, Lorg/acra/ErrorReporter;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v1}, Lorg/acra/config/ACRAConfiguration;->deleteUnapprovedReportsOnApplicationStart()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 326
    invoke-virtual {v0}, Lorg/acra/util/ApplicationStartupProcessor;->deleteAllUnapprovedReportsBarOne()V

    .line 328
    :cond_1
    iget-object v1, p0, Lorg/acra/ErrorReporter;->reportExecutor:Lorg/acra/builder/ReportExecutor;

    invoke-virtual {v1}, Lorg/acra/builder/ReportExecutor;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 329
    invoke-virtual {v0}, Lorg/acra/util/ApplicationStartupProcessor;->sendApprovedReports()V

    :cond_2
    return-void
.end method

.method public clearCustomData()V
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/acra/ErrorReporter;->crashReportDataFactory:Lorg/acra/collector/CrashReportDataFactory;

    invoke-virtual {v0}, Lorg/acra/collector/CrashReportDataFactory;->clearCustomData()V

    return-void
.end method

.method public getCustomData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lorg/acra/ErrorReporter;->crashReportDataFactory:Lorg/acra/collector/CrashReportDataFactory;

    invoke-virtual {v0, p1}, Lorg/acra/collector/CrashReportDataFactory;->getCustomData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public handleException(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 366
    invoke-virtual {p0, p1, v0}, Lorg/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public handleException(Ljava/lang/Throwable;Z)V
    .locals 1

    .line 346
    invoke-direct {p0}, Lorg/acra/ErrorReporter;->performDeprecatedReportPriming()V

    .line 347
    new-instance v0, Lorg/acra/builder/ReportBuilder;

    invoke-direct {v0}, Lorg/acra/builder/ReportBuilder;-><init>()V

    .line 348
    invoke-virtual {v0, p1}, Lorg/acra/builder/ReportBuilder;->exception(Ljava/lang/Throwable;)Lorg/acra/builder/ReportBuilder;

    if-eqz p2, :cond_0

    .line 350
    invoke-virtual {v0}, Lorg/acra/builder/ReportBuilder;->endApplication()Lorg/acra/builder/ReportBuilder;

    .line 352
    :cond_0
    iget-object p1, p0, Lorg/acra/ErrorReporter;->reportExecutor:Lorg/acra/builder/ReportExecutor;

    invoke-virtual {v0, p1}, Lorg/acra/builder/ReportBuilder;->build(Lorg/acra/builder/ReportExecutor;)V

    return-void
.end method

.method public handleSilentException(Ljava/lang/Throwable;)V
    .locals 1

    .line 286
    invoke-direct {p0}, Lorg/acra/ErrorReporter;->performDeprecatedReportPriming()V

    .line 287
    new-instance v0, Lorg/acra/builder/ReportBuilder;

    invoke-direct {v0}, Lorg/acra/builder/ReportBuilder;-><init>()V

    .line 288
    invoke-virtual {v0, p1}, Lorg/acra/builder/ReportBuilder;->exception(Ljava/lang/Throwable;)Lorg/acra/builder/ReportBuilder;

    move-result-object p1

    .line 289
    invoke-virtual {p1}, Lorg/acra/builder/ReportBuilder;->sendSilently()Lorg/acra/builder/ReportBuilder;

    move-result-object p1

    iget-object v0, p0, Lorg/acra/ErrorReporter;->reportExecutor:Lorg/acra/builder/ReportExecutor;

    .line 290
    invoke-virtual {p1, v0}, Lorg/acra/builder/ReportBuilder;->build(Lorg/acra/builder/ReportExecutor;)V

    return-void
.end method

.method public putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/acra/ErrorReporter;->crashReportDataFactory:Lorg/acra/collector/CrashReportDataFactory;

    invoke-virtual {v0, p1, p2}, Lorg/acra/collector/CrashReportDataFactory;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public removeCustomData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lorg/acra/ErrorReporter;->crashReportDataFactory:Lorg/acra/collector/CrashReportDataFactory;

    invoke-virtual {v0, p1}, Lorg/acra/collector/CrashReportDataFactory;->removeCustomData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setEnabled(Z)V
    .locals 4

    .line 301
    iget-boolean v0, p0, Lorg/acra/ErrorReporter;->supportedAndroidVersion:Z

    if-eqz v0, :cond_1

    .line 302
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACRA is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v3, "enabled"

    goto :goto_0

    :cond_0
    const-string v3, "disabled"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/acra/ErrorReporter;->context:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lorg/acra/ErrorReporter;->reportExecutor:Lorg/acra/builder/ReportExecutor;

    invoke-virtual {v0, p1}, Lorg/acra/builder/ReportExecutor;->setEnabled(Z)V

    goto :goto_1

    .line 305
    :cond_1
    sget-object p1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ACRA 4.7.0+ requires Froyo or greater. ACRA is disabled and will NOT catch crashes or send messages."

    invoke-interface {p1, v0, v1}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setExceptionHandlerInitializer(Lorg/acra/ExceptionHandlerInitializer;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    new-instance p1, Lorg/acra/ErrorReporter$2;

    invoke-direct {p1, p0}, Lorg/acra/ErrorReporter$2;-><init>(Lorg/acra/ErrorReporter;)V

    :goto_0
    iput-object p1, p0, Lorg/acra/ErrorReporter;->exceptionHandlerInitializer:Lorg/acra/ExceptionHandlerInitializer;

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .line 253
    iget-object v0, p0, Lorg/acra/ErrorReporter;->reportExecutor:Lorg/acra/builder/ReportExecutor;

    invoke-virtual {v0}, Lorg/acra/builder/ReportExecutor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lorg/acra/ErrorReporter;->reportExecutor:Lorg/acra/builder/ReportExecutor;

    invoke-virtual {v0, p1, p2}, Lorg/acra/builder/ReportExecutor;->handReportToDefaultExceptionHandler(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    .line 259
    :cond_0
    :try_start_0
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACRA caught a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/acra/ErrorReporter;->context:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    sget-boolean v0, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz v0, :cond_1

    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Building report"

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_1
    invoke-direct {p0}, Lorg/acra/ErrorReporter;->performDeprecatedReportPriming()V

    .line 265
    new-instance v0, Lorg/acra/builder/ReportBuilder;

    invoke-direct {v0}, Lorg/acra/builder/ReportBuilder;-><init>()V

    .line 266
    invoke-virtual {v0, p1}, Lorg/acra/builder/ReportBuilder;->uncaughtExceptionThread(Ljava/lang/Thread;)Lorg/acra/builder/ReportBuilder;

    move-result-object v0

    .line 267
    invoke-virtual {v0, p2}, Lorg/acra/builder/ReportBuilder;->exception(Ljava/lang/Throwable;)Lorg/acra/builder/ReportBuilder;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Lorg/acra/builder/ReportBuilder;->endApplication()Lorg/acra/builder/ReportBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/acra/ErrorReporter;->reportExecutor:Lorg/acra/builder/ReportExecutor;

    .line 269
    invoke-virtual {v0, v1}, Lorg/acra/builder/ReportBuilder;->build(Lorg/acra/builder/ReportExecutor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 273
    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "ACRA failed to capture the error - handing off to native error reporter"

    invoke-interface {v1, v2, v3, v0}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    iget-object v0, p0, Lorg/acra/ErrorReporter;->reportExecutor:Lorg/acra/builder/ReportExecutor;

    invoke-virtual {v0, p1, p2}, Lorg/acra/builder/ReportExecutor;->handReportToDefaultExceptionHandler(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
