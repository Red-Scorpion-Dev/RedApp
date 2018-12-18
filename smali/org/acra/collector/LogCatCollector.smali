.class final Lorg/acra/collector/LogCatCollector;
.super Lorg/acra/collector/Collector;
.source "LogCatCollector.java"


# instance fields
.field private final config:Lorg/acra/config/ACRAConfiguration;

.field private final pm:Lorg/acra/util/PackageManagerWrapper;


# direct methods
.method constructor <init>(Lorg/acra/config/ACRAConfiguration;Lorg/acra/util/PackageManagerWrapper;)V
    .locals 3

    const/4 v0, 0x3

    .line 56
    new-array v0, v0, [Lorg/acra/ReportField;

    sget-object v1, Lorg/acra/ReportField;->LOGCAT:Lorg/acra/ReportField;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->EVENTSLOG:Lorg/acra/ReportField;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->RADIOLOG:Lorg/acra/ReportField;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lorg/acra/collector/Collector;-><init>([Lorg/acra/ReportField;)V

    .line 57
    iput-object p1, p0, Lorg/acra/collector/LogCatCollector;->config:Lorg/acra/config/ACRAConfiguration;

    .line 58
    iput-object p2, p0, Lorg/acra/collector/LogCatCollector;->pm:Lorg/acra/util/PackageManagerWrapper;

    return-void
.end method

.method private collectLogCat(Ljava/lang/String;)Lorg/acra/model/Element;
    .locals 6

    .line 74
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 75
    iget-object v1, p0, Lorg/acra/collector/LogCatCollector;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v1}, Lorg/acra/config/ACRAConfiguration;->logcatFilterByPid()Z

    move-result v1

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "):"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 77
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "logcat"

    .line 78
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    const-string v2, "-b"

    .line 80
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_1
    iget-object p1, p0, Lorg/acra/collector/LogCatCollector;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {p1}, Lorg/acra/config/ACRAConfiguration;->logcatArguments()Lorg/acra/collections/ImmutableList;

    move-result-object p1

    const-string v2, "-t"

    .line 87
    invoke-interface {p1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-le v2, v4, :cond_2

    .line 88
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    add-int/2addr v2, v3

    .line 89
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 95
    :cond_2
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 98
    :try_start_0
    new-instance p1, Ljava/lang/ProcessBuilder;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p1

    .line 100
    sget-boolean v1, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz v1, :cond_3

    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Retrieving logcat output..."

    invoke-interface {v1, v2, v3}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_3
    new-instance v1, Lorg/acra/model/StringElement;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Lorg/acra/collector/LogCatCollector$1;

    invoke-direct {v3, p0, v0}, Lorg/acra/collector/LogCatCollector$1;-><init>(Lorg/acra/collector/LogCatCollector;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3, v4}, Lorg/acra/collector/LogCatCollector;->streamToString(Ljava/io/InputStream;Lcom/android/internal/util/Predicate;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/acra/model/StringElement;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 111
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "LogCatCollector.collectLogCat could not retrieve data."

    invoke-interface {v0, v1, v2, p1}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    sget-object v1, Lorg/acra/ACRAConstants;->NOT_AVAILABLE:Lorg/acra/model/Element;

    :goto_1
    return-object v1
.end method

.method private streamToString(Ljava/io/InputStream;Lcom/android/internal/util/Predicate;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/android/internal/util/Predicate<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lorg/acra/collector/LogCatCollector;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v0}, Lorg/acra/config/ACRAConfiguration;->nonBlockingReadForLogcat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-static {p1, p2, p3}, Lorg/acra/util/IOUtils;->streamToStringNonBlockingRead(Ljava/io/InputStream;Lcom/android/internal/util/Predicate;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 158
    :cond_0
    invoke-static {p1, p2, p3}, Lorg/acra/util/IOUtils;->streamToString(Ljava/io/InputStream;Lcom/android/internal/util/Predicate;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method collect(Lorg/acra/ReportField;Lorg/acra/builder/ReportBuilder;)Lorg/acra/model/Element;
    .locals 0

    .line 129
    sget-object p2, Lorg/acra/collector/LogCatCollector$2;->$SwitchMap$org$acra$ReportField:[I

    invoke-virtual {p1}, Lorg/acra/ReportField;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p2, "radio"

    goto :goto_0

    :pswitch_1
    const-string p2, "events"

    .line 140
    :goto_0
    :pswitch_2
    invoke-direct {p0, p2}, Lorg/acra/collector/LogCatCollector;->collectLogCat(Ljava/lang/String;)Lorg/acra/model/Element;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method shouldCollect(Ljava/util/Set;Lorg/acra/ReportField;Lorg/acra/builder/ReportBuilder;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/acra/ReportField;",
            ">;",
            "Lorg/acra/ReportField;",
            "Lorg/acra/builder/ReportBuilder;",
            ")Z"
        }
    .end annotation

    .line 120
    invoke-super {p0, p1, p2, p3}, Lorg/acra/collector/Collector;->shouldCollect(Ljava/util/Set;Lorg/acra/ReportField;Lorg/acra/builder/ReportBuilder;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/acra/collector/LogCatCollector;->pm:Lorg/acra/util/PackageManagerWrapper;

    const-string p2, "android.permission.READ_LOGS"

    .line 121
    invoke-virtual {p1, p2}, Lorg/acra/util/PackageManagerWrapper;->hasPermission(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x10

    if-lt p1, p2, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
