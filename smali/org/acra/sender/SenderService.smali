.class public Lorg/acra/sender/SenderService;
.super Landroid/support/v4/app/JobIntentService;
.source "SenderService.java"


# static fields
.field public static final EXTRA_ACRA_CONFIG:Ljava/lang/String; = "acraConfig"

.field public static final EXTRA_APPROVE_REPORTS_FIRST:Ljava/lang/String; = "approveReportsFirst"

.field public static final EXTRA_ONLY_SEND_SILENT_REPORTS:Ljava/lang/String; = "onlySendSilentReports"


# instance fields
.field private final locator:Lorg/acra/file/ReportLocator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/JobIntentService;-><init>()V

    .line 47
    new-instance v0, Lorg/acra/file/ReportLocator;

    invoke-direct {v0, p0}, Lorg/acra/file/ReportLocator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/acra/sender/SenderService;->locator:Lorg/acra/file/ReportLocator;

    return-void
.end method

.method private getSenderInstances(Lorg/acra/config/ACRAConfiguration;Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/acra/config/ACRAConfiguration;",
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/acra/sender/ReportSenderFactory;",
            ">;>;)",
            "Ljava/util/List<",
            "Lorg/acra/sender/ReportSender;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    new-instance v1, Lorg/acra/util/InstanceCreator;

    invoke-direct {v1}, Lorg/acra/util/InstanceCreator;-><init>()V

    .line 104
    invoke-virtual {v1, p2}, Lorg/acra/util/InstanceCreator;->create(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/acra/sender/ReportSenderFactory;

    .line 105
    invoke-virtual {p0}, Lorg/acra/sender/SenderService;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lorg/acra/sender/ReportSenderFactory;->create(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)Lorg/acra/sender/ReportSender;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private markReportsAsApproved()V
    .locals 9

    .line 114
    sget-boolean v0, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Mark all pending reports as approved."

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/acra/sender/SenderService;->locator:Lorg/acra/file/ReportLocator;

    invoke-virtual {v0}, Lorg/acra/file/ReportLocator;->getUnapprovedReports()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 117
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lorg/acra/sender/SenderService;->locator:Lorg/acra/file/ReportLocator;

    invoke-virtual {v5}, Lorg/acra/file/ReportLocator;->getApprovedFolder()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 119
    sget-object v5, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v6, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not rename approved report from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v6, v3}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected onHandleWork(Landroid/content/Intent;)V
    .locals 8

    const-string v0, "acraConfig"

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    sget-boolean p1, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz p1, :cond_0

    sget-object p1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SenderService was started but no valid intent was delivered, will now quit"

    invoke-interface {p1, v0, v1}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const-string v0, "onlySendSilentReports"

    const/4 v1, 0x0

    .line 57
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "approveReportsFirst"

    .line 58
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "acraConfig"

    .line 60
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/acra/config/ACRAConfiguration;

    .line 62
    invoke-virtual {p1}, Lorg/acra/config/ACRAConfiguration;->reportSenderFactoryClasses()Lorg/acra/collections/ImmutableList;

    move-result-object v3

    .line 64
    sget-boolean v4, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz v4, :cond_2

    sget-object v4, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v5, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v6, "About to start sending reports from SenderService"

    invoke-interface {v4, v5, v6}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_2
    :try_start_0
    invoke-direct {p0, p1, v3}, Lorg/acra/sender/SenderService;->getSenderInstances(Lorg/acra/config/ACRAConfiguration;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    if-eqz v2, :cond_3

    .line 70
    invoke-direct {p0}, Lorg/acra/sender/SenderService;->markReportsAsApproved()V

    .line 74
    :cond_3
    iget-object v2, p0, Lorg/acra/sender/SenderService;->locator:Lorg/acra/file/ReportLocator;

    invoke-virtual {v2}, Lorg/acra/file/ReportLocator;->getApprovedReports()[Ljava/io/File;

    move-result-object v2

    .line 76
    new-instance v4, Lorg/acra/sender/ReportDistributor;

    invoke-direct {v4, p0, p1, v3}, Lorg/acra/sender/ReportDistributor;-><init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;Ljava/util/List;)V

    .line 80
    new-instance p1, Lorg/acra/file/CrashReportFileNameParser;

    invoke-direct {p1}, Lorg/acra/file/CrashReportFileNameParser;-><init>()V

    .line 81
    array-length v3, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v1, v3, :cond_6

    aget-object v6, v2, v1

    if-eqz v0, :cond_4

    .line 82
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lorg/acra/file/CrashReportFileNameParser;->isSilent(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    const/4 v7, 0x5

    if-lt v5, v7, :cond_5

    goto :goto_2

    .line 90
    :cond_5
    invoke-virtual {v4, v6}, Lorg/acra/sender/ReportDistributor;->distribute(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 94
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2, p1}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    :cond_6
    :goto_2
    sget-boolean p1, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz p1, :cond_7

    sget-object p1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Finished sending reports from SenderService"

    invoke-interface {p1, v0, v1}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method
