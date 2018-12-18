.class public final Lorg/acra/builder/ReportExecutor;
.super Ljava/lang/Object;
.source "ReportExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/acra/builder/ReportExecutor$TimeHelper;
    }
.end annotation


# static fields
.field private static mNotificationCounter:I


# instance fields
.field private final config:Lorg/acra/config/ACRAConfiguration;

.field private final context:Landroid/content/Context;

.field private final crashReportDataFactory:Lorg/acra/collector/CrashReportDataFactory;

.field private final defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private enabled:Z

.field private final processFinisher:Lorg/acra/util/ProcessFinisher;

.field private final reportPrimer:Lorg/acra/builder/ReportPrimer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;Lorg/acra/collector/CrashReportDataFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Lorg/acra/builder/ReportPrimer;Lorg/acra/util/ProcessFinisher;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lorg/acra/builder/ReportExecutor;->enabled:Z

    .line 66
    iput-object p1, p0, Lorg/acra/builder/ReportExecutor;->context:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lorg/acra/builder/ReportExecutor;->config:Lorg/acra/config/ACRAConfiguration;

    .line 68
    iput-object p3, p0, Lorg/acra/builder/ReportExecutor;->crashReportDataFactory:Lorg/acra/collector/CrashReportDataFactory;

    .line 69
    iput-object p4, p0, Lorg/acra/builder/ReportExecutor;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 70
    iput-object p5, p0, Lorg/acra/builder/ReportExecutor;->reportPrimer:Lorg/acra/builder/ReportPrimer;

    .line 71
    iput-object p6, p0, Lorg/acra/builder/ReportExecutor;->processFinisher:Lorg/acra/util/ProcessFinisher;

    return-void
.end method

.method static synthetic access$100(Lorg/acra/builder/ReportExecutor;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lorg/acra/builder/ReportExecutor;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lorg/acra/builder/ReportExecutor;)Lorg/acra/config/ACRAConfiguration;
    .locals 0

    .line 43
    iget-object p0, p0, Lorg/acra/builder/ReportExecutor;->config:Lorg/acra/config/ACRAConfiguration;

    return-object p0
.end method

.method static synthetic access$400(Lorg/acra/builder/ReportExecutor;Lorg/acra/builder/ReportBuilder;Ljava/io/File;Z)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lorg/acra/builder/ReportExecutor;->dialogAndEnd(Lorg/acra/builder/ReportBuilder;Ljava/io/File;Z)V

    return-void
.end method

.method private createCrashReportDialogIntent(Ljava/io/File;Lorg/acra/builder/ReportBuilder;)Landroid/content/Intent;
    .locals 4

    .line 387
    sget-boolean v0, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating DialogIntent for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/acra/builder/ReportBuilder;->getException()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/acra/builder/ReportExecutor;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/acra/builder/ReportExecutor;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v2}, Lorg/acra/config/ACRAConfiguration;->reportDialogClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "REPORT_FILE"

    .line 389
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "REPORT_EXCEPTION"

    .line 390
    invoke-virtual {p2}, Lorg/acra/builder/ReportBuilder;->getException()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "REPORT_CONFIG"

    .line 391
    iget-object p2, p0, Lorg/acra/builder/ReportExecutor;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method

.method private createNotification(Ljava/io/File;Lorg/acra/builder/ReportBuilder;)V
    .locals 10

    .line 303
    iget-object v0, p0, Lorg/acra/builder/ReportExecutor;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 306
    iget-object v1, p0, Lorg/acra/builder/ReportExecutor;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v1}, Lorg/acra/config/ACRAConfiguration;->resNotifIcon()I

    move-result v1

    .line 308
    iget-object v2, p0, Lorg/acra/builder/ReportExecutor;->context:Landroid/content/Context;

    iget-object v3, p0, Lorg/acra/builder/ReportExecutor;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v3}, Lorg/acra/config/ACRAConfiguration;->resNotifTickerText()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 311
    sget-boolean v5, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz v5, :cond_0

    sget-object v5, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v6, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Creating Notification for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/acra/builder/ReportExecutor;->createCrashReportDialogIntent(Ljava/io/File;Lorg/acra/builder/ReportBuilder;)Landroid/content/Intent;

    move-result-object v5

    .line 313
    iget-object v6, p0, Lorg/acra/builder/ReportExecutor;->context:Landroid/content/Context;

    sget v7, Lorg/acra/builder/ReportExecutor;->mNotificationCounter:I

    add-int/lit8 v8, v7, 0x1

    sput v8, Lorg/acra/builder/ReportExecutor;->mNotificationCounter:I

    const/high16 v8, 0x8000000

    invoke-static {v6, v7, v5, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 315
    iget-object v6, p0, Lorg/acra/builder/ReportExecutor;->context:Landroid/content/Context;

    iget-object v7, p0, Lorg/acra/builder/ReportExecutor;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v7}, Lorg/acra/config/ACRAConfiguration;->resNotifTitle()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 316
    iget-object v7, p0, Lorg/acra/builder/ReportExecutor;->context:Landroid/content/Context;

    iget-object v8, p0, Lorg/acra/builder/ReportExecutor;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v8}, Lorg/acra/config/ACRAConfiguration;->resNotifText()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 318
    new-instance v8, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v9, p0, Lorg/acra/builder/ReportExecutor;->context:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 320
    invoke-virtual {v8, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 321
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 322
    invoke-virtual {v1, v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 323
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 324
    invoke-virtual {v1, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 325
    invoke-virtual {v1, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 326
    invoke-virtual {v1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 327
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 329
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 334
    invoke-direct {p0, p1, p2}, Lorg/acra/builder/ReportExecutor;->createCrashReportDialogIntent(Ljava/io/File;Lorg/acra/builder/ReportBuilder;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "FORCE_CANCEL"

    .line 335
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 336
    iget-object p2, p0, Lorg/acra/builder/ReportExecutor;->context:Landroid/content/Context;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {p2, v2, p1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    const/16 p1, 0x29a

    .line 339
    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private dialogAndEnd(Lorg/acra/builder/ReportBuilder;Ljava/io/File;Z)V
    .locals 3

    if-eqz p3, :cond_1

    .line 234
    sget-boolean p3, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz p3, :cond_0

    sget-object p3, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating CrashReportDialog for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    invoke-direct {p0, p2, p1}, Lorg/acra/builder/ReportExecutor;->createCrashReportDialogIntent(Ljava/io/File;Lorg/acra/builder/ReportBuilder;)Landroid/content/Intent;

    move-result-object p2

    const/high16 p3, 0x10000000

    .line 236
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 237
    iget-object p3, p0, Lorg/acra/builder/ReportExecutor;->context:Landroid/content/Context;

    invoke-virtual {p3, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 240
    :cond_1
    sget-boolean p2, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz p2, :cond_2

    sget-object p2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object p3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wait for Toast + worker ended. Kill Application ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/acra/builder/ReportBuilder;->isEndApplication()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_2
    invoke-virtual {p1}, Lorg/acra/builder/ReportBuilder;->isEndApplication()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 243
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 246
    new-instance p2, Lorg/acra/builder/ReportExecutor$3;

    invoke-direct {p2, p0}, Lorg/acra/builder/ReportExecutor$3;-><init>(Lorg/acra/builder/ReportExecutor;)V

    .line 253
    invoke-virtual {p2}, Lorg/acra/builder/ReportExecutor$3;->start()V

    .line 254
    sget-object p2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object p3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Warning: Acra may behave differently with a debugger attached"

    invoke-interface {p2, p3, v0}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object p2, p0, Lorg/acra/builder/ReportExecutor;->processFinisher:Lorg/acra/util/ProcessFinisher;

    invoke-virtual {p1}, Lorg/acra/builder/ReportBuilder;->getUncaughtExceptionThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/acra/util/ProcessFinisher;->finishLastActivity(Ljava/lang/Thread;)V

    goto :goto_0

    .line 258
    :cond_3
    invoke-virtual {p1}, Lorg/acra/builder/ReportBuilder;->getUncaughtExceptionThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p1}, Lorg/acra/builder/ReportBuilder;->getException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/acra/builder/ReportExecutor;->endApplication(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private endApplication(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .line 267
    iget-object v0, p0, Lorg/acra/builder/ReportExecutor;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v0}, Lorg/acra/config/ACRAConfiguration;->alsoReportToAndroidFramework()Z

    move-result v0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lorg/acra/builder/ReportExecutor;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_2

    .line 272
    sget-boolean v0, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz v0, :cond_1

    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Handing Exception on to default ExceptionHandler"

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_1
    iget-object v0, p0, Lorg/acra/builder/ReportExecutor;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 275
    :cond_2
    iget-object p2, p0, Lorg/acra/builder/ReportExecutor;->processFinisher:Lorg/acra/util/ProcessFinisher;

    invoke-virtual {p2, p1}, Lorg/acra/util/ProcessFinisher;->endApplication(Ljava/lang/Thread;)V

    :goto_1
    return-void
.end method

.method private getReportFileName(Lorg/acra/collector/CrashReportData;)Ljava/io/File;
    .locals 4

    .line 344
    sget-object v0, Lorg/acra/ReportField;->USER_CRASH_DATE:Lorg/acra/ReportField;

    invoke-virtual {p1, v0}, Lorg/acra/collector/CrashReportData;->getProperty(Lorg/acra/ReportField;)Ljava/lang/String;

    move-result-object v0

    .line 345
    sget-object v1, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    invoke-virtual {p1, v1}, Lorg/acra/collector/CrashReportData;->getProperty(Lorg/acra/ReportField;)Ljava/lang/String;

    move-result-object p1

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    sget-object p1, Lorg/acra/ACRAConstants;->SILENT_SUFFIX:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".stacktrace"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 349
    new-instance v0, Lorg/acra/file/ReportLocator;

    iget-object v1, p0, Lorg/acra/builder/ReportExecutor;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/acra/file/ReportLocator;-><init>(Landroid/content/Context;)V

    .line 350
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lorg/acra/file/ReportLocator;->getUnapprovedFolder()Ljava/io/File;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private saveCrashReportFile(Ljava/io/File;Lorg/acra/collector/CrashReportData;)V
    .locals 4

    .line 370
    :try_start_0
    sget-boolean v0, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing crash report file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_0
    new-instance v0, Lorg/acra/file/CrashReportPersister;

    invoke-direct {v0}, Lorg/acra/file/CrashReportPersister;-><init>()V

    .line 372
    invoke-virtual {v0, p2, p1}, Lorg/acra/file/CrashReportPersister;->store(Lorg/acra/collector/CrashReportData;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 374
    sget-object p2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "An error occurred while writing the report file..."

    invoke-interface {p2, v0, v1, p1}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private startSendingReports(Z)V
    .locals 3

    .line 285
    iget-boolean v0, p0, Lorg/acra/builder/ReportExecutor;->enabled:Z

    if-eqz v0, :cond_0

    .line 286
    new-instance v0, Lorg/acra/sender/SenderServiceStarter;

    iget-object v1, p0, Lorg/acra/builder/ReportExecutor;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/acra/builder/ReportExecutor;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-direct {v0, v1, v2}, Lorg/acra/sender/SenderServiceStarter;-><init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)V

    const/4 v1, 0x1

    .line 287
    invoke-virtual {v0, p1, v1}, Lorg/acra/sender/SenderServiceStarter;->startService(ZZ)V

    goto :goto_0

    .line 289
    :cond_0
    sget-object p1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Would be sending reports, but ACRA is disabled"

    invoke-interface {p1, v0, v1}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public execute(Lorg/acra/builder/ReportBuilder;)V
    .locals 11

    .line 120
    iget-boolean v0, p0, Lorg/acra/builder/ReportExecutor;->enabled:Z

    if-nez v0, :cond_0

    .line 121
    sget-object p1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ACRA is disabled. Report not sent."

    invoke-interface {p1, v0, v1}, Lorg/acra/log/ACRALog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/acra/builder/ReportExecutor;->reportPrimer:Lorg/acra/builder/ReportPrimer;

    iget-object v1, p0, Lorg/acra/builder/ReportExecutor;->context:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lorg/acra/builder/ReportPrimer;->primeReport(Landroid/content/Context;Lorg/acra/builder/ReportBuilder;)V

    .line 130
    invoke-virtual {p1}, Lorg/acra/builder/ReportBuilder;->isSendSilently()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 132
    iget-object v0, p0, Lorg/acra/builder/ReportExecutor;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v0}, Lorg/acra/config/ACRAConfiguration;->reportingInteractionMode()Lorg/acra/ReportingInteractionMode;

    move-result-object v0

    .line 133
    sget-object v3, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    if-ne v0, v3, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_1

    .line 134
    sget-object v0, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 137
    :cond_2
    sget-object v0, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    .line 143
    iget-object v3, p0, Lorg/acra/builder/ReportExecutor;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v3}, Lorg/acra/config/ACRAConfiguration;->reportingInteractionMode()Lorg/acra/ReportingInteractionMode;

    move-result-object v3

    sget-object v4, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    .line 148
    :goto_0
    sget-object v4, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-eq v0, v4, :cond_4

    iget-object v4, p0, Lorg/acra/builder/ReportExecutor;->config:Lorg/acra/config/ACRAConfiguration;

    .line 149
    invoke-virtual {v4}, Lorg/acra/config/ACRAConfiguration;->resToastText()I

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    if-eq v0, v4, :cond_4

    sget-object v4, Lorg/acra/ReportingInteractionMode;->DIALOG:Lorg/acra/ReportingInteractionMode;

    if-ne v0, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v4, 0x1

    .line 151
    :goto_2
    new-instance v7, Lorg/acra/builder/ReportExecutor$TimeHelper;

    const/4 v5, 0x0

    invoke-direct {v7, v5}, Lorg/acra/builder/ReportExecutor$TimeHelper;-><init>(Lorg/acra/builder/ReportExecutor$1;)V

    if-eqz v4, :cond_5

    .line 153
    new-instance v5, Lorg/acra/builder/ReportExecutor$1;

    invoke-direct {v5, p0, v7}, Lorg/acra/builder/ReportExecutor$1;-><init>(Lorg/acra/builder/ReportExecutor;Lorg/acra/builder/ReportExecutor$TimeHelper;)V

    .line 168
    invoke-virtual {v5}, Lorg/acra/builder/ReportExecutor$1;->start()V

    .line 174
    :cond_5
    iget-object v5, p0, Lorg/acra/builder/ReportExecutor;->crashReportDataFactory:Lorg/acra/collector/CrashReportDataFactory;

    invoke-virtual {v5, p1}, Lorg/acra/collector/CrashReportDataFactory;->createCrashData(Lorg/acra/builder/ReportBuilder;)Lorg/acra/collector/CrashReportData;

    move-result-object v5

    .line 178
    invoke-direct {p0, v5}, Lorg/acra/builder/ReportExecutor;->getReportFileName(Lorg/acra/collector/CrashReportData;)Ljava/io/File;

    move-result-object v9

    .line 179
    invoke-direct {p0, v9, v5}, Lorg/acra/builder/ReportExecutor;->saveCrashReportFile(Ljava/io/File;Lorg/acra/collector/CrashReportData;)V

    .line 181
    new-instance v5, Lorg/acra/prefs/SharedPreferencesFactory;

    iget-object v6, p0, Lorg/acra/builder/ReportExecutor;->context:Landroid/content/Context;

    iget-object v8, p0, Lorg/acra/builder/ReportExecutor;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-direct {v5, v6, v8}, Lorg/acra/prefs/SharedPreferencesFactory;-><init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)V

    invoke-virtual {v5}, Lorg/acra/prefs/SharedPreferencesFactory;->create()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 182
    sget-object v6, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-eq v0, v6, :cond_8

    sget-object v6, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-eq v0, v6, :cond_8

    const-string v6, "acra.alwaysaccept"

    .line 184
    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_3

    .line 194
    :cond_6
    sget-object v3, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    if-ne v0, v3, :cond_9

    .line 195
    sget-boolean v3, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz v3, :cond_7

    sget-object v3, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v6, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Creating Notification."

    invoke-interface {v3, v6, v8}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_7
    invoke-direct {p0, v9, p1}, Lorg/acra/builder/ReportExecutor;->createNotification(Ljava/io/File;Lorg/acra/builder/ReportBuilder;)V

    goto :goto_4

    .line 187
    :cond_8
    :goto_3
    invoke-direct {p0, v3}, Lorg/acra/builder/ReportExecutor;->startSendingReports(Z)V

    .line 188
    sget-object v3, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-ne v0, v3, :cond_9

    invoke-virtual {p1}, Lorg/acra/builder/ReportBuilder;->isEndApplication()Z

    move-result v3

    if-nez v3, :cond_9

    return-void

    .line 199
    :cond_9
    :goto_4
    sget-object v3, Lorg/acra/ReportingInteractionMode;->DIALOG:Lorg/acra/ReportingInteractionMode;

    if-ne v0, v3, :cond_a

    const-string v0, "acra.alwaysaccept"

    .line 200
    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v10, 0x1

    goto :goto_5

    :cond_a
    const/4 v10, 0x0

    :goto_5
    if-eqz v4, :cond_b

    .line 204
    new-instance v0, Lorg/acra/builder/ReportExecutor$2;

    move-object v5, v0

    move-object v6, p0

    move-object v8, p1

    invoke-direct/range {v5 .. v10}, Lorg/acra/builder/ReportExecutor$2;-><init>(Lorg/acra/builder/ReportExecutor;Lorg/acra/builder/ReportExecutor$TimeHelper;Lorg/acra/builder/ReportBuilder;Ljava/io/File;Z)V

    .line 223
    invoke-virtual {v0}, Lorg/acra/builder/ReportExecutor$2;->start()V

    goto :goto_6

    .line 225
    :cond_b
    invoke-direct {p0, p1, v9, v10}, Lorg/acra/builder/ReportExecutor;->dialogAndEnd(Lorg/acra/builder/ReportBuilder;Ljava/io/File;Z)V

    :goto_6
    return-void
.end method

.method public handReportToDefaultExceptionHandler(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .line 94
    iget-object v0, p0, Lorg/acra/builder/ReportExecutor;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACRA is disabled for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/acra/builder/ReportExecutor;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - forwarding uncaught Exception on to default ExceptionHandler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lorg/acra/builder/ReportExecutor;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 99
    :cond_0
    sget-object p1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACRA is disabled for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/acra/builder/ReportExecutor;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - no default ExceptionHandler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget-object p1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACRA caught a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/acra/builder/ReportExecutor;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1, p2}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lorg/acra/builder/ReportExecutor;->enabled:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lorg/acra/builder/ReportExecutor;->enabled:Z

    return-void
.end method
