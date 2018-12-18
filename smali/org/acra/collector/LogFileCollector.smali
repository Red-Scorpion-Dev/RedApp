.class final Lorg/acra/collector/LogFileCollector;
.super Lorg/acra/collector/Collector;
.source "LogFileCollector.java"


# instance fields
.field private final config:Lorg/acra/config/ACRAConfiguration;

.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)V
    .locals 3

    const/4 v0, 0x1

    .line 52
    new-array v0, v0, [Lorg/acra/ReportField;

    sget-object v1, Lorg/acra/ReportField;->APPLICATION_LOG:Lorg/acra/ReportField;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lorg/acra/collector/Collector;-><init>([Lorg/acra/ReportField;)V

    .line 53
    iput-object p1, p0, Lorg/acra/collector/LogFileCollector;->context:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lorg/acra/collector/LogFileCollector;->config:Lorg/acra/config/ACRAConfiguration;

    return-void
.end method

.method private getStream(Lorg/acra/file/Directory;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    .line 85
    iget-object v0, p0, Lorg/acra/collector/LogFileCollector;->context:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Lorg/acra/file/Directory;->getFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    .line 87
    sget-boolean p2, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz p2, :cond_3

    .line 88
    sget-object p2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Log file \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 89
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 90
    sget-object p2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Log file \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is a directory"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result p2

    if-nez p2, :cond_2

    .line 92
    sget-object p2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Log file \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' can\'t be read"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    :cond_2
    :try_start_0
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    .line 97
    :catch_0
    sget-object p2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not open stream for log file \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_3
    :goto_0
    new-instance p1, Ljava/io/ByteArrayInputStream;

    const/4 p2, 0x0

    new-array p2, p2, [B

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p1
.end method


# virtual methods
.method collect(Lorg/acra/ReportField;Lorg/acra/builder/ReportBuilder;)Lorg/acra/model/Element;
    .locals 1

    .line 68
    :try_start_0
    new-instance p1, Lorg/acra/model/StringElement;

    iget-object p2, p0, Lorg/acra/collector/LogFileCollector;->config:Lorg/acra/config/ACRAConfiguration;

    .line 69
    invoke-virtual {p2}, Lorg/acra/config/ACRAConfiguration;->applicationLogFileDir()Lorg/acra/file/Directory;

    move-result-object p2

    iget-object v0, p0, Lorg/acra/collector/LogFileCollector;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v0}, Lorg/acra/config/ACRAConfiguration;->applicationLogFile()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/acra/collector/LogFileCollector;->getStream(Lorg/acra/file/Directory;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    iget-object v0, p0, Lorg/acra/collector/LogFileCollector;->config:Lorg/acra/config/ACRAConfiguration;

    .line 70
    invoke-virtual {v0}, Lorg/acra/config/ACRAConfiguration;->applicationLogFileLines()I

    move-result v0

    .line 68
    invoke-static {p2, v0}, Lorg/acra/util/IOUtils;->streamToString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/acra/model/StringElement;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 72
    :catch_0
    sget-object p1, Lorg/acra/ACRAConstants;->NOT_AVAILABLE:Lorg/acra/model/Element;

    return-object p1
.end method
